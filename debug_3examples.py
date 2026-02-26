"""Debug script: run 3 examples with multi-turn retry, print all prompts and responses."""
from __future__ import annotations
import json
from datasets import load_dataset
from dotenv import load_dotenv
load_dotenv()

from src.experiments.utils import build_llm_client, clean_question
from src.evaluation.accuracy_metrics import parse_gold_seconds
from src.llms.prompts import RETRY_USER_TEMPLATE
from src.method.nl_to_pddl import (
    build_pddl_messages,
    parse_pddl_response,
    PDDLResponse,
)
from src.method.pddl_solver import solve

SEP = "=" * 80
SUBSEP = "-" * 60
MAX_RETRIES = 2


def main():
    ds = load_dataset("fangrulin/asynchow", split="test")

    llm = build_llm_client(
        "openai/gpt-4.1-mini", temperature=0.0, max_tokens=8192,
        num_workers=1, strict_json=True,
    )

    for idx in [0, 1, 2]:
        ex = ds[idx]
        question = clean_question(ex["question"])
        gold_seconds = parse_gold_seconds(ex["answer"])

        print(f"\n{SEP}")
        print(f"EXAMPLE {idx}  (gold={gold_seconds}s)")
        print(SEP)

        # ── Build initial messages (conversation history) ─────────────
        messages = build_pddl_messages(question, num_shots=0)

        print(f"\n{SUBSEP}")
        print("SYSTEM PROMPT:")
        print(SUBSEP)
        print(messages[0]["content"])

        print(f"\n{SUBSEP}")
        print("USER PROMPT:")
        print(SUBSEP)
        print(messages[-1]["content"])

        # ── LLM call + solve + multi-turn retry ──────────────────────
        for turn in range(1 + MAX_RETRIES):
            label = "INITIAL" if turn == 0 else f"RETRY {turn}"
            print(f"\n{SUBSEP}")
            print(f"{label} LLM CALL  (total messages: {len(messages)})")
            print(SUBSEP)

            raw_response = llm.chat(messages, schema=PDDLResponse)
            print(f"RAW RESPONSE (first 1500 chars):")
            print(raw_response[:1500] if raw_response else "(empty)")

            # Append assistant response to history
            if raw_response:
                messages.append({"role": "assistant", "content": raw_response})

            parsed = parse_pddl_response(raw_response)
            if parsed is None:
                print("\n*** PARSE FAILED — no valid JSON ***")
                break

            domain_pddl, problem_pddl = parsed

            if ":parameters" not in domain_pddl:
                print("\n*** BUG: missing :parameters in domain ***")
            if problem_pddl.rstrip().endswith("}"):
                print("\n*** BUG: problem_pddl ends with '}' ***")

            sr = solve(domain_pddl, problem_pddl, max_retries=1)
            if sr.error:
                print(f"SOLVER ERROR:\n{sr.error[:500]}")
                if turn < MAX_RETRIES:
                    # Append error feedback as user message → next turn sees full history
                    error_msg = RETRY_USER_TEMPLATE.format(error=sr.error)
                    messages.append({"role": "user", "content": error_msg})
                    print(f"\n  → Appending error feedback to history (now {len(messages)} messages)")
                    print(f"  RETRY PROMPT:\n{error_msg}")
                else:
                    print(f"\n  → Max retries reached, giving up")
            else:
                pred = int(round(sr.makespan_seconds))
                print(f"Makespan: {pred}s  |  Gold: {gold_seconds}s  |  Correct: {pred == gold_seconds}")
                if sr.plan:
                    for start, action, dur in sr.plan:
                        print(f"  {start:.1f}: ({action}) [{dur:.1f}]")
                break  # Success — no more retries needed

    print(f"\n{SEP}")
    print("DONE")


if __name__ == "__main__":
    main()
