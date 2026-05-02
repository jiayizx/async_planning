import json
import os
import time
from typing import Any, Dict, List

from google import genai
from google.genai import types
from pydantic import BaseModel

from .base import BaseLLM

GEMINI_MODELS_MAPPING = {
    "gemini-2.5-flash": "gemini-2.5-flash",
    "gemini-3-flash": "gemini-3-flash-preview",
    "gemini-3-pro": "gemini-3-pro-preview",
}

# thinking_budget=0 disables thinking for 2.5 series.
# thinkingLevel="minimal" minimizes thinking for 3.x series (cannot fully disable).
GEMINI_THINKING_CONFIG = {
    "gemini-2.5-flash": types.ThinkingConfig(thinking_budget=2048),
    "gemini-3-flash-preview": types.ThinkingConfig(thinking_level="minimal"),
    "gemini-3-pro-preview": types.ThinkingConfig(thinking_level="low"),  # supports: low, high (not minimal)
}


class GeminiLLM(BaseLLM):
    def __init__(
        self,
        model_name: str,
        config: Dict[str, Any],
        num_workers: int = 1,
        strict_json: bool = False,
    ):
        super().__init__(model_name, config, num_workers, strict_json)

        if model_name in GEMINI_MODELS_MAPPING:
            self.model_name = GEMINI_MODELS_MAPPING[model_name]

        self.client = genai.Client(api_key=os.environ.get("GOOGLE_API_KEY"))

    def _log_usage(self, response) -> None:
        u = response.usage_metadata
        thinking = getattr(u, "thoughts_token_count", 0) or 0
        print(
            f"[tokens] prompt={u.prompt_token_count}  "
            f"output={u.candidates_token_count}  "
            f"thinking={thinking}  "
            f"total={u.total_token_count}"
        )

    def _build_gemini_config(self, extra: Dict[str, Any] = None) -> types.GenerateContentConfig:
        """Build GenerateContentConfig from self.config, mapping OpenAI-style keys."""
        kwargs = {}
        for k, v in self.config.items():
            if k == "max_tokens":
                if v:
                    kwargs["max_output_tokens"] = v
            else:
                kwargs[k] = v
        if self.model_name in GEMINI_THINKING_CONFIG:
            kwargs["thinking_config"] = GEMINI_THINKING_CONFIG[self.model_name]
        if extra:
            kwargs.update(extra)
        return types.GenerateContentConfig(**kwargs)

    def _build_contents(self, messages: List[Dict[str, str]]):
        """Convert OpenAI-style messages to Gemini contents, extracting system prompt."""
        system_text = None
        contents = []
        for m in messages:
            if m["role"] == "system":
                system_text = m["content"]
            else:
                role = "user" if m["role"] == "user" else "model"
                contents.append(
                    types.Content(role=role, parts=[types.Part(text=m["content"])])
                )
        return system_text, contents

    def _call_with_retry(self, fn, max_retries: int = 5, base_wait: float = 5.0):
        """Call fn(), retrying on 503/429 with exponential backoff."""
        wait = base_wait
        for attempt in range(max_retries):
            try:
                return fn()
            except Exception as e:
                msg = str(e) + type(e).__name__
                is_rate_limit = "429" in msg or "RESOURCE_EXHAUSTED" in msg or "ResourceExhausted" in msg
                is_unavailable = "503" in msg or "UNAVAILABLE" in msg or "ServiceUnavailable" in msg
                if (is_rate_limit or is_unavailable) and attempt < max_retries - 1:
                    print(f"  [gemini retry {attempt+1}/{max_retries-1}] {msg[:80]} — waiting {wait:.0f}s")
                    time.sleep(wait)
                    wait = min(wait * 2, 60.0)
                else:
                    raise

    def _chat(self, messages: List[Dict[str, str]]) -> str:
        system_text, contents = self._build_contents(messages)
        extra = {"system_instruction": system_text} if system_text else {}
        config = self._build_gemini_config(extra)

        response = self._call_with_retry(lambda: self.client.models.generate_content(
            model=self.model_name,
            contents=contents,
            config=config,
        ))
        # self._log_usage(response)
        return response.text

    def _chat_with_format(self, messages: List[Dict[str, str]], schema: BaseModel) -> str:
        system_text, contents = self._build_contents(messages)

        # Append JSON schema instruction to the last user message
        schema_json = json.dumps(schema.model_json_schema(), indent=2)
        last = contents[-1]
        new_text = last.parts[0].text + f"\n\nRespond with valid JSON matching this schema:\n{schema_json}"
        contents[-1] = types.Content(role=last.role, parts=[types.Part(text=new_text)])

        extra = {"response_mime_type": "application/json", "response_schema": schema}
        if system_text:
            extra["system_instruction"] = system_text
        config = self._build_gemini_config(extra)

        response = self._call_with_retry(lambda: self.client.models.generate_content(
            model=self.model_name,
            contents=contents,
            config=config,
        ))
        # self._log_usage(response)
        return response.text
