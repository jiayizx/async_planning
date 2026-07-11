import json
import os
import time
from typing import Any, Dict, List

import anthropic
import httpx
from anthropic import Anthropic, AnthropicBedrock
from pydantic import BaseModel

from .base import BaseLLM

CLAUDE_MODELS_MAPPING = {
    "claude-4.5-haiku": "claude-haiku-4-5",
    "claude-4.5-sonnet": "claude-sonnet-4-5",
}

# Anthropic API model id → Bedrock model / inference profile id (after CLAUDE_MODELS_MAPPING).
#
# Use ``global.anthropic.…`` inference routing (recommended in Bedrock docs). Bare
# ``anthropic.…`` foundation IDs often fail with on-demand throughput unless you use
# an inference profile; ``global.`` / ``us.`` / etc. satisfy that.
#
# Override with env ``BEDROCK_MODEL_ID`` (e.g. ``us.anthropic.…`` for US CRIS only).
# See: https://platform.claude.com/docs/en/build-with-claude/claude-on-amazon-bedrock
CLAUDE_API_TO_BEDROCK_MODEL = {
    "claude-haiku-4-5": "global.anthropic.claude-haiku-4-5-20251001-v1:0",
    "claude-sonnet-4-5": "global.anthropic.claude-sonnet-4-5-20250929-v1:0",
}


class _AnthropicBedrockBearer(AnthropicBedrock):
    """Bedrock Runtime with ``Authorization: Bearer`` (Bedrock API keys / team tokens).

    Official docs: bearer auth is wired in C#/Go/Java SDKs via ``AWS_BEARER_TOKEN_BEDROCK``;
    the Python Anthropic SDK only SigV4-signs Bedrock requests. This subclass sends the bearer
    header so Python can use the same env var as other SDKs.
    """

    def __init__(self, *args: Any, bearer_token: str, **kwargs: Any) -> None:
        self._bedrock_bearer_token = bearer_token
        super().__init__(*args, **kwargs)

    def _prepare_request(self, request: httpx.Request) -> None:
        request.headers["Authorization"] = f"Bearer {self._bedrock_bearer_token}"


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

        bedrock_bearer = os.environ.get("AWS_BEARER_TOKEN_BEDROCK")
        if bedrock_bearer:
            aws_region = (
                os.environ.get("AWS_REGION")
                or os.environ.get("AWS_DEFAULT_REGION")
                or "us-west-2"
            )
            bedrock_model = CLAUDE_API_TO_BEDROCK_MODEL.get(
                self.model_name, self.model_name
            )
            self.model_name = bedrock_model
            self.client = _AnthropicBedrockBearer(
                bearer_token=bedrock_bearer,
                aws_region=aws_region,
            )
        else:
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