#!/usr/bin/env python3
"""
Analyze error patterns in formalizer results.
"""
import json
import re
from collections import Counter, defaultdict
from pathlib import Path


def load_results(jsonl_path: str) -> list[dict]:
    """Load JSONL results file (multi-line pretty-printed JSON objects)."""
    results = []
    with open(jsonl_path, "r", encoding="utf-8") as f:
        content = f.read()
    
    # Split by lines starting with '{'
    chunks = []
    current = []
    for line in content.split('\n'):
        if line.startswith('{') and current:
            # New record starting, save previous
            chunks.append('\n'.join(current))
            current = [line]
        else:
            current.append(line)
    
    # Don't forget the last one
    if current:
        chunks.append('\n'.join(current))
    
    # Parse each chunk
    for chunk in chunks:
        chunk = chunk.strip()
        if chunk:
            try:
                results.append(json.loads(chunk))
            except json.JSONDecodeError:
                pass  # Skip malformed chunks
    
    return results


def categorize_error(record: dict) -> str:
    """Categorize the error type."""
    if record.get("correct"):
        return "SUCCESS"
    
    error = record.get("error", "")
    raw_output = record.get("raw_solver_output", "")
    
    if not error and not raw_output:
        return "NO_ERROR_INFO"
    
    # Check for specific error patterns
    if "PDDL parse failed" in error:
        return "PDDL_PARSE_FAILED"
    
    if "Syntax error" in error or "Syntax error" in raw_output:
        return "SYNTAX_ERROR"
    
    if ":functions" in error or "number-fluents" in error or "fluents" in error:
        return "FLUENT_NOT_SUPPORTED"
    
    if "Undeclared requirement" in error or "Undeclared requirement" in raw_output:
        return "MISSING_REQUIREMENT"
    
    if "does not fully support ADL" in error or "negative-preconditions" in error:
        return "ADL_NOT_SUPPORTED"
    
    if "Problem Unsolvable" in raw_output and "Solution Found" not in raw_output:
        return "UNSOLVABLE"
    
    if "Unreadable structure" in error or "Unreadable structure" in raw_output:
        return "UNREADABLE_STRUCTURE"
    
    if "bad problem description" in error or "bad problem description" in raw_output:
        return "BAD_PROBLEM"
    
    # Check if it's just warnings but still worked
    if "Warnings encountered" in raw_output and "Solution Found" in raw_output:
        return "SUCCESS_WITH_WARNINGS"
    
    return "OTHER_ERROR"


def extract_syntax_errors(record: dict) -> list[str]:
    """Extract specific syntax error messages."""
    errors = []
    error_text = record.get("error", "") + "\n" + record.get("raw_solver_output", "")
    
    # Find all "Error:" lines
    for match in re.finditer(r"Error: (.+?)(?:\n|$)", error_text):
        errors.append(match.group(1).strip())
    
    return errors


def analyze_condition_syntax(domain_pddl: str) -> dict:
    """Check for common PDDL syntax issues in conditions."""
    issues = {
        "missing_and_in_condition": False,
        "missing_and_in_effect": False,
        "uses_functions": False,
        "uses_negative_preconditions": False,
    }
    
    # Check for conditions without (and ...) wrapper
    # Pattern: :condition (at start (pred1) (pred2))
    if re.search(r":condition\s+\(at start\s+\([^)]+\)\s+\([^)]+\)", domain_pddl):
        issues["missing_and_in_condition"] = True
    
    # Check for effects without (and ...) wrapper
    if re.search(r":effect\s+\(at start\s+\([^)]+\)\s+\([^)]+\)", domain_pddl):
        issues["missing_and_in_effect"] = True
    
    # Check for :functions
    if ":functions" in domain_pddl:
        issues["uses_functions"] = True
    
    # Check for :negative-preconditions
    if ":negative-preconditions" in domain_pddl:
        issues["uses_negative_preconditions"] = True
    
    return issues


def main():
    results_path = Path("results/asynchow/formalizer/openai_gpt-4.1-mini/full_results.jsonl")
    
    if not results_path.exists():
        print(f"Results file not found: {results_path}")
        return
    
    print(f"Loading results from {results_path}...\n")
    results = load_results(results_path)
    
    print(f"Total examples: {len(results)}\n")
    
    # Categorize errors
    error_categories = Counter()
    syntax_errors = []
    pddl_issues = defaultdict(int)
    
    for record in results:
        category = categorize_error(record)
        error_categories[category] += 1
        
        if category == "SYNTAX_ERROR":
            errors = extract_syntax_errors(record)
            syntax_errors.extend(errors)
        
        # Analyze PDDL for common issues
        if not record.get("correct") and record.get("domain_pddl"):
            issues = analyze_condition_syntax(record["domain_pddl"])
            for issue, found in issues.items():
                if found:
                    pddl_issues[issue] += 1
    
    # Print summary
    print("=" * 60)
    print("ERROR CATEGORY BREAKDOWN")
    print("=" * 60)
    for category, count in error_categories.most_common():
        pct = 100 * count / len(results)
        print(f"{category:30s} {count:4d} ({pct:5.1f}%)")
    
    print("\n" + "=" * 60)
    print("COMMON PDDL SYNTAX ISSUES")
    print("=" * 60)
    for issue, count in sorted(pddl_issues.items(), key=lambda x: -x[1]):
        issue_name = issue.replace("_", " ").title()
        print(f"{issue_name:40s} {count:4d}")
    
    if syntax_errors:
        print("\n" + "=" * 60)
        print("TOP SPECIFIC SYNTAX ERRORS")
        print("=" * 60)
        syntax_counter = Counter(syntax_errors)
        for error, count in syntax_counter.most_common(10):
            print(f"  [{count:3d}x] {error}")
    
    # Accuracy
    correct = sum(1 for r in results if r.get("correct"))
    accuracy = 100 * correct / len(results)
    
    print("\n" + "=" * 60)
    print("OVERALL METRICS")
    print("=" * 60)
    print(f"Accuracy: {correct}/{len(results)} ({accuracy:.1f}%)")
    print(f"Parse failures: {error_categories['PDDL_PARSE_FAILED']}")
    print(f"Solver errors: {len(results) - correct - error_categories['PDDL_PARSE_FAILED']}")
    
    # Find and show example of missing (and ...) issue
    print("\n" + "=" * 60)
    print("EXAMPLE FIXES NEEDED")
    print("=" * 60)
    
    for record in results:
        if not record.get("correct") and record.get("domain_pddl"):
            domain = record["domain_pddl"]
            
            # Check for missing (and ...) in condition
            match = re.search(r":condition\s+\(at start\s+(\([^)]+\))\s+(\([^)]+\))", domain)
            if match:
                print("\n1. Missing (and ...) wrapper in :condition")
                print("   BAD:")
                print(f"     :condition (at start {match.group(1)} {match.group(2)})")
                print("   GOOD:")
                print(f"     :condition (and")
                print(f"       (at start {match.group(1)})")
                print(f"       (at start {match.group(2)})")
                print(f"     )")
                break
    
    for record in results:
        if not record.get("correct") and record.get("domain_pddl"):
            domain = record["domain_pddl"]
            if ":functions" in domain:
                print("\n2. Using :functions (not supported by OPTIC without :numeric-fluents)")
                print("   PROBLEM: LLM tried to parameterize durations with fluents")
                print("   FIX: Use explicit numeric durations in each action")
                print("   Instead of: :duration (= ?duration (step_duration ?s))")
                print("   Use: :duration (= ?duration 3600)")
                break
    
    # Show the "OTHER_ERROR" cases
    print("\n" + "=" * 60)
    print(f"OTHER_ERROR CASES ({error_categories['OTHER_ERROR']})")
    print("=" * 60)
    count = 0
    for record in results:
        cat = categorize_error(record)
        if cat == "OTHER_ERROR":
            count += 1
            error_text = record.get("error", "") or record.get("raw_solver_output", "")
            # Extract key error info
            if "does not fully support ADL" in error_text:
                print(f"\n{count}. ADL not supported (despite requirements restriction)")
            elif "appear to violate part of the PDDL" in error_text:
                print(f"\n{count}. PDDL spec violation")
            elif not error_text.strip():
                print(f"\n{count}. Empty error (pred={record.get('pred_seconds')} vs gold={record.get('gold_seconds')})")
            else:
                lines = [l for l in error_text.split('\n') if l.strip()][:3]
                print(f"\n{count}. {' / '.join(lines)}")


if __name__ == "__main__":
    main()
