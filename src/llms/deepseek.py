import os
import time
from typing import Any, Dict, List

import openai
from openai import OpenAI
from pydantic import BaseModel

from .base import BaseLLM


DEEPSEEK_MODELS_MAPPING = {
    "deepseek/deepseek-v4-flash": "deepseek-v4-flash",
    "deepseek/deepseek-v4-pro": "deepseek-v4-pro",
    "deepseek-v4-flash": "deepseek-v4-flash",
    "deepseek-v4-pro": "deepseek-v4-pro",
}


class DeepSeekLLM(BaseLLM):
    """DeepSeek API implementation via its OpenAI-compatible endpoint."""

    def __init__(
        self,
        model_name: str,
        config: Dict[str, Any],
        num_workers: int = 1,
        strict_json: bool = False,
    ):
        super().__init__(model_name, config, num_workers, strict_json)

        if model_name in DEEPSEEK_MODELS_MAPPING:
            self.model_name = DEEPSEEK_MODELS_MAPPING[model_name]

        self.client = OpenAI(
            api_key=os.environ.get("DEEPSEEK_API_KEY"),
            base_url=os.environ.get("DEEPSEEK_BASE_URL", "https://api.deepseek.com"),
        )

    @staticmethod
    def _is_quota_exceeded(e: openai.RateLimitError) -> bool:
        body = getattr(e, "body", {}) or {}
        return body.get("code") == "insufficient_balance"

    def _chat(self, messages: List[Dict[str, str]]) -> str:
        wait = 5
        for attempt in range(6):
            try:
                response = self.client.chat.completions.create(
                    model=self.model_name,
                    messages=messages,
                    **self.config,
                )
                return response.choices[0].message.content
            except openai.RateLimitError as e:
                if self._is_quota_exceeded(e):
                    raise RuntimeError(
                        "DeepSeek balance/quota exceeded. Please check your DeepSeek billing."
                    ) from e
                if attempt == 5:
                    raise
                time.sleep(wait)
                wait *= 2

    @staticmethod
    def _ensure_json_prompt(messages: List[Dict[str, str]], schema: BaseModel) -> List[Dict[str, str]]:
        """DeepSeek requires the prompt text to explicitly mention JSON."""
        schema_keys = []
        try:
            schema_keys = list(schema.model_json_schema().get("properties", {}).keys())
        except Exception:
            schema_keys = []

        keys_hint = ""
        if schema_keys:
            keys_hint = f" Use a JSON object with keys: {', '.join(schema_keys)}."

        reminder = (
            "Return valid JSON only."
            f"{keys_hint} Do not wrap the JSON in markdown fences."
        )
        return [*messages, {"role": "system", "content": reminder}]

    def _chat_with_format(self, messages: List[Dict[str, str]], schema: BaseModel) -> str:
        # Keep JSON handling simple and compatible with the existing pipeline.
        wait = 5
        messages = self._ensure_json_prompt(messages, schema)
        for attempt in range(6):
            try:
                response = self.client.chat.completions.create(
                    model=self.model_name,
                    messages=messages,
                    response_format={"type": "json_object"},
                    **self.config,
                )
                return response.choices[0].message.content
            except openai.RateLimitError as e:
                if self._is_quota_exceeded(e):
                    raise RuntimeError(
                        "DeepSeek balance/quota exceeded. Please check your DeepSeek billing."
                    ) from e
                if attempt == 5:
                    raise
                time.sleep(wait)
                wait *= 2
