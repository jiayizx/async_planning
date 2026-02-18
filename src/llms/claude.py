import json
import os
import time
from typing import Any, Dict, List

import anthropic
from anthropic import Anthropic
from pydantic import BaseModel

from .base import BaseLLM

CLAUDE_MODELS_MAPPING = {
    "claude-4.5-haiku": "claude-haiku-4-5",
    "claude-4.5-sonnet": "claude-sonnet-4-5",
}


class ClaudeLLM(BaseLLM):
    def __init__(
        self,
        model_name: str,
        config: Dict[str, Any],
        num_workers: int = 1,
        strict_json: bool = False,
    ):
        super().__init__(model_name, config, num_workers, strict_json)

        if model_name in CLAUDE_MODELS_MAPPING:
            self.model_name = CLAUDE_MODELS_MAPPING[model_name]

        self.client = Anthropic(api_key=os.environ.get("ANTHROPIC_API_KEY"))


    def _chat(self, messages: List[Dict[str, str]]) -> str:
        # Anthropic requires system prompt as a separate parameter
        system_text = None
        filtered = []
        for m in messages:
            if m["role"] == "system":
                system_text = m["content"]
            else:
                filtered.append(m)

        kwargs = {**self.config}
        if system_text:
            kwargs["system"] = system_text

        wait = 5
        for attempt in range(6):
            try:
                response = self.client.messages.create(
                    model=self.model_name,
                    messages=filtered,
                    **kwargs,
                )
                content = response.content
                if isinstance(content, list):
                    return "".join(
                        block.text for block in content if getattr(block, "text", None) is not None
                    )
                return content
            except anthropic.RateLimitError:
                if attempt == 5:
                    raise
                time.sleep(wait)
                wait *= 2


    def _chat_with_format(self, messages: List[Dict[str, str]], schema: BaseModel) -> str:
        # Anthropic requires system prompt as a separate parameter
        system_text = None
        filtered = []
        for m in messages:
            if m["role"] == "system":
                system_text = m["content"]
            else:
                filtered.append(m)

        kwargs = {**self.config}
        if system_text:
            kwargs["system"] = system_text

        # Append JSON schema instruction to the last user message
        schema_json = json.dumps(schema.model_json_schema(), indent=2)
        filtered[-1] = {
            **filtered[-1],
            "content": filtered[-1]["content"] + f"\n\nRespond with valid JSON matching this schema:\n{schema_json}",
        }

        wait = 5
        for attempt in range(6):
            try:
                response = self.client.messages.create(
                    model=self.model_name,
                    messages=filtered,
                    **kwargs,
                )
                content = response.content
                if isinstance(content, list):
                    return "".join(
                        block.text for block in content if getattr(block, "text", None) is not None
                    )
                return content
            except anthropic.RateLimitError:
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