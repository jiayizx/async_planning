"""
Find and retry failed NL rewrites in data/async_planning/*_nlrewrite_*.json.

A record is considered "failed" if question == question_abstract (the LLM
rewrite was invalid and the script fell back to the abstract version).

This script re-runs the rewrite pipeline from src/gen_data/rewrite_nl.py
on only the failed records, then patches them back into the original files.

Usage:
    python analysis/fix_failed_rewrites.py
    python analysis/fix_failed_rewrites.py --model gemini-3-flash --max-retries 8
    python analysis/fix_failed_rewrites.py --dry-run          # just report, don't rewrite
    python analysis/fix_failed_rewrites.py --data-dir data/async_planning
"""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

from dotenv import load_dotenv
load_dotenv()

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))

DEFAULT_DATA_DIR = ROOT / "data" / "async_planning"


def _is_failed(record: dict) -> bool:
    if record.get("nl_rewrite_failed"):
        return True
    q = record.get("question", "")
    qa = record.get("question_abstract", "")
    return q and qa and q == qa


def scan_files(data_dir: Path) -> list[tuple[Path, list[int]]]:
    """Return list of (file_path, [indices of failed records])."""
    results = []
    for f in sorted(data_dir.glob("*_nlrewrite_*.json")):
        records = json.loads(f.read_text(encoding="utf-8"))
        failed_idx = [i for i, r in enumerate(records) if _is_failed(r)]
        if failed_idx:
            results.append((f, failed_idx))
    return results


def fix_file(
    file_path: Path,
    failed_indices: list[int],
    model_name: str,
    temperature: float,
    max_tokens: int,
    num_workers: int,
    max_retries: int,
    rewrite_fn=None,
) -> int:
    """Retry failed rewrites in a single file. Returns number fixed."""
    all_records = json.loads(file_path.read_text(encoding="utf-8"))
    failed_samples = [all_records[i] for i in failed_indices]

    # Use the abstract question as input for rewrite
    for s in failed_samples:
        if s.get("question_abstract"):
            s["question"] = s["question_abstract"]

    print(f"\n{'='*60}")
    print(f"File: {file_path.name}")
    print(f"Retrying {len(failed_samples)} failed records (max_retries={max_retries})")
    print(f"{'='*60}")

    rewritten = rewrite_fn(
        failed_samples,
        model_name=model_name,
        temperature=temperature,
        max_tokens=max_tokens,
        num_workers=num_workers,
        max_retries=max_retries,
    )
    print('rewritten: ', rewritten)

    n_fixed = 0
    for orig_idx, new_rec in zip(failed_indices, rewritten):
        if not new_rec.get("nl_rewrite_failed"):
            all_records[orig_idx] = new_rec
            n_fixed += 1

    file_path.write_text(
        json.dumps(all_records, ensure_ascii=False, indent=2),
        encoding="utf-8",
    )
    print(f"Fixed {n_fixed}/{len(failed_indices)} in {file_path.name}")
    return n_fixed


def main() -> None:
    parser = argparse.ArgumentParser(description="Retry failed NL rewrites")
    parser.add_argument("--data-dir", default=str(DEFAULT_DATA_DIR))
    parser.add_argument("--model", default="openai/gpt-5")
    parser.add_argument("--temperature", type=float, default=0.8)
    parser.add_argument("--max-tokens", type=int, default=0,
                        help="0 = auto-scale per sample")
    parser.add_argument("--workers", type=int, default=8)
    parser.add_argument("--max-retries", type=int, default=5)
    parser.add_argument("--dry-run", action="store_true",
                        help="Only report failed records, don't rewrite")
    args = parser.parse_args()

    data_dir = Path(args.data_dir)
    if not data_dir.is_absolute():
        data_dir = ROOT / data_dir

    files_with_failures = scan_files(data_dir)

    if not files_with_failures:
        print("All records have valid NL rewrites. Nothing to do.")
        return

    total_failed = sum(len(idx) for _, idx in files_with_failures)
    print(f"Found {total_failed} failed rewrites across {len(files_with_failures)} files:\n")
    for f, idx in files_with_failures:
        records = json.loads(f.read_text(encoding="utf-8"))
        print(f"  {f.name}: {len(idx)} failed (indices: {idx})")
        for i in idx:
            print(f"    [{i}] n_steps={records[i].get('n_steps')}, "
                  f"id={records[i].get('id')}")

    if args.dry_run:
        print("\n--dry-run: not rewriting.")
        return

    # Lazy import: only needed when actually rewriting (avoids heavy deps for --dry-run)
    from src.gen_data.rewrite_nl import rewrite_dataset

    total_fixed = 0
    for file_path, failed_indices in files_with_failures:
        n_fixed = fix_file(
            file_path, failed_indices,
            model_name=args.model,
            temperature=args.temperature,
            max_tokens=args.max_tokens,
            num_workers=args.workers,
            max_retries=args.max_retries,
            rewrite_fn=rewrite_dataset,
        )
        total_fixed += n_fixed

    print(f"\n{'='*60}")
    print(f"Done. Fixed {total_fixed}/{total_failed} failed rewrites.")
    print(f"{'='*60}")


if __name__ == "__main__":
    main()
