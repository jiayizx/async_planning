import concurrent.futures
from abc import ABC, abstractmethod
from typing import Any, Callable, Dict, List, TypeVar, Union

from pydantic import BaseModel
from tqdm import tqdm

T = TypeVar("T")


class BaseLLM(ABC):
    """Base class for all LLM interfaces."""

    def __init__(
        self,
        model_name: str,
        config: Dict[str, Any],
        num_workers: int = 1,
        strict_json: bool = False,
    ):
        self.model_name = model_name
        self.config = config
        self.num_workers = num_workers
        self.strict_json = strict_json

    @abstractmethod
    def _chat(self, messages: List[Dict[str, str]]) -> str:
        """Send a single conversation to the model and return the response string."""

    @abstractmethod
    def _chat_with_format(self, messages: List[Dict[str, str]], schema: BaseModel) -> str:
        """Send a single conversation and return a JSON-formatted response string."""

    def _complete(self, prompt: str) -> str:
        """Send a completion prompt to the model. Subclasses can override."""
        raise NotImplementedError("This model does not support completion prompts.")

    # ── public API ──────────────────────────────────────────────────────

    def chat(self, messages: List[Dict[str, str]], schema: BaseModel = None) -> str:
        """Send a single conversation and return a single response string."""
        if self.strict_json:
            if schema is None:
                raise ValueError("Schema is required for strict JSON mode.")
            return self._chat_with_format(messages, schema)
        return self._chat(messages)

    def batch_chat(
        self,
        messages_list: List[List[Dict[str, str]]],
        schema: BaseModel = None,
        desc: str = "Processing messages",
    ) -> List[str]:
        """Send multiple conversations in parallel and return responses in order."""

        def _func(messages: List[Dict[str, str]]) -> str:
            return self.chat(messages, schema=schema)

        return self._parallel_execute(_func, messages_list, desc=desc)

    # ── internals ───────────────────────────────────────────────────────

    def _parallel_execute(
        self, func: Callable[[List[Dict[str, str]]], T], messages_list: List[List[Dict[str, str]]], desc: str = "Processing messages"
    ) -> List[T]:
        """Execute *func* over *messages_list* in parallel, preserving order."""
        with concurrent.futures.ThreadPoolExecutor(max_workers=self.num_workers) as executor:
            future_to_index = {
                executor.submit(func, msgs): i for i, msgs in enumerate(messages_list)
            }

            results: List[T | None] = [None] * len(messages_list)

            with tqdm(
                total=len(messages_list),
                desc=desc,
                unit="msg",
                bar_format="{l_bar}{bar}| {n_fmt}/{total_fmt} [{elapsed}<{remaining}, {rate_fmt}]",
            ) as pbar:
                for future in concurrent.futures.as_completed(future_to_index):
                    index = future_to_index[future]
                    try:
                        results[index] = future.result()
                        pbar.set_postfix({"completed": f"#{index}"})
                    except Exception as e:
                        pbar.write(f"Error processing message {index}: {e}")
                        results[index] = None
                    pbar.update(1)

            return results
