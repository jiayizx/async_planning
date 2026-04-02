import json
import os
import time
from typing import Any, Dict, List

import openai
from openai import OpenAI
from pydantic import BaseModel

from .base import BaseLLM

GPT_MODELS_MAPPING = {
    "openai/gpt-4o-mini": "gpt-4o-mini",
    "openai/gpt-4o": "gpt-4o",  # gpt-4o-2024-03-27
    "openai/gpt-4.1-mini": "gpt-4.1-mini",  # gpt-4.1-mini-2025-04-14
    "openai/gpt-4.1": "gpt-4.1",  # gpt-4.1-2025-04-14
    "openai/gpt-5-mini": "gpt-5-mini",
    "openai/gpt-5": "gpt-5",

    # OpenAI reasoning models
    "openai/o1-mini": "o1-mini",
    "openai/o3-mini": "o3-mini",
}


class OpenAILLM(BaseLLM):
    def __init__(
        self,
        model_name: str,
        config: Dict[str, Any],
        num_workers: int = 1,
        strict_json: bool = False,
    ):
        super().__init__(model_name, config, num_workers, strict_json)

        if model_name in GPT_MODELS_MAPPING:
            self.model_name = GPT_MODELS_MAPPING[model_name]

        self.client = OpenAI(api_key=os.environ.get("OPENAI_API_KEY"))

        # Track models that require max_completion_tokens (not max_tokens)
        self._use_max_completion_tokens = any(
            x in self.model_name for x in ("o3", "o4", "gpt-5")
        )
        if self._use_max_completion_tokens:
            # Remove temperature and top_p for these models
            self.config.pop("temperature", None)
            self.config.pop("top_p", None)
            # Map max_tokens → max_completion_tokens at init
            if "max_tokens" in self.config:
                self.config["max_completion_tokens"] = self.config.pop("max_tokens")
            if "reasoning_effort" not in self.config:
                self.config["reasoning_effort"] = "low"

    def _api_kwargs(self) -> Dict[str, Any]:
        """Config for API calls. Converts max_tokens → max_completion_tokens at call time."""
        kwargs = dict(self.config)
        if self._use_max_completion_tokens and "max_tokens" in kwargs:
            kwargs["max_completion_tokens"] = kwargs.pop("max_tokens")
        return kwargs

    @staticmethod
    def _is_quota_exceeded(e: openai.RateLimitError) -> bool:
        """Return True if the error is a permanent quota/billing failure (not a transient rate limit)."""
        body = getattr(e, "body", {}) or {}
        return body.get("code") == "insufficient_quota"

    def _chat(self, messages: List[Dict[str, str]]) -> str:
        wait = 5
        for attempt in range(6):
            try:
                response = self.client.chat.completions.create(
                    model=self.model_name,
                    messages=messages,
                    **self._api_kwargs(),
                )
                return response.choices[0].message.content
            except openai.RateLimitError as e:
                if self._is_quota_exceeded(e):
                    raise RuntimeError(
                        "OpenAI quota exceeded (insufficient_quota). "
                        "Please check your billing at https://platform.openai.com/billing"
                    ) from e
                if attempt == 5:
                    raise
                time.sleep(wait)
                wait *= 2


    def _chat_with_format(self, messages: List[Dict[str, str]], schema: BaseModel) -> str:
        wait = 5
        for attempt in range(6):
            try:
                completion = self.client.beta.chat.completions.parse(
                    model=self.model_name,
                    messages=messages,
                    response_format=schema,
                    **self._api_kwargs(),
                )
                return completion.choices[0].message.content
            except openai.RateLimitError as e:
                if self._is_quota_exceeded(e):
                    raise RuntimeError(
                        "OpenAI quota exceeded (insufficient_quota). "
                        "Please check your billing at https://platform.openai.com/billing"
                    ) from e
                if attempt == 5:
                    raise
                time.sleep(wait)
                wait *= 2

    # def _parse_response_with_schema(self, response: str) -> List[Dict[str, Any]]:
    #     """Parse the response based on the provided schema."""
    #     try:
    #         if isinstance(response, str):
    #             parsed = json.loads(response)

    #             # Handle double-escaped JSON strings (i.e., string inside a string)
    #             if isinstance(parsed, str):
    #                 parsed = json.loads(parsed)

    #             # Handle different schema types
    #             if "responses" in parsed:
    #                 # For schemas with a 'responses' field (SequenceResponse, StructuredResponseList, etc.)
    #                 responses = parsed["responses"]

    #                 if isinstance(responses, list):
    #                     result = []
    #                     for resp in responses:
    #                         if (
    #                             isinstance(resp, dict)
    #                             and "text" in resp
    #                             and any(
    #                                 key in resp
    #                                 for key in ["probability", "confidence", "perplexity", "nll"]
    #                             )
    #                         ):
    #                             # Combine probability/confidence/perplexity fields
    #                             if "probability" in resp:
    #                                 prob = resp["probability"]
    #                             elif "confidence" in resp:
    #                                 prob = resp["confidence"]
    #                             elif "perplexity" in resp:
    #                                 prob = resp["perplexity"]
    #                             elif "nll" in resp:
    #                                 prob = resp["nll"]
    #                             result.append({"response": resp["text"], "probability": prob})
    #                         elif isinstance(resp, dict) and "text" in resp:
    #                             # Response
    #                             result.append({"response": resp["text"], "probability": 1.0})
    #                         elif isinstance(resp, str):
    #                             # SequenceResponse (list of strings)
    #                             result.append({"response": resp, "probability": 1.0})
    #                     return result
    #             else:
    #                 # For direct response schemas (Response)
    #                 if "text" in parsed:
    #                     return [
    #                         {
    #                             "response": parsed["text"],
    #                             "probability": parsed.get("probability", 1.0),
    #                         }
    #                     ]
    #                 elif "response" in parsed:
    #                     return [
    #                         {
    #                             "response": parsed["response"],
    #                             "probability": parsed.get("probability", 1.0),
    #                         }
    #                     ]

    #             # Fallback: return the raw validated data
    #             return [{"response": str(parsed), "probability": 1.0}]

    #     except Exception as e:
    #         print(f"Error parsing response with schema: {e}")
    #         # If parsing fails, return a single response with probability 1.0
    #         return [{"response": response, "probability": 1.0}]

    # def _chat_with_format(
    #     self, messages: List[Dict[str, str]], schema: BaseModel
    # ) -> List[Dict[str, Any]]:
    #     # print(f"Schema: {schema}")
    #     try:
    #         completion = self.client.chat.completions.create(
    #             model=self.model_name,
    #             messages=messages,
    #             **self.config,
    #             response_format=schema,
    #         )
    #         response = completion.choices[0].message.content

    #         # print(f"Response: {response}")
    #         parsed_response = self._parse_response_with_schema(response)
    #         # print(f"Structured Output Response:\n" + "\n".join(str(resp) for resp in parsed_response))
    #         return parsed_response
    #     except Exception as e:
    #         print(f"Error: {e}")
    #         return []