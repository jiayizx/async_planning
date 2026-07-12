"""Three mutually-exclusive failure modes for Planner, denominator = full N (all 50).

format_fail:      model output could not be parsed into the required JSON schema at all
extraction_fail:  JSON parsed, but the extracted graph is unusable (dangling ref / cycle)
                  OR usable but factually wrong (code-computed makespan != gold)
arithmetic_fail:  extracted graph is well-formed AND correct (code-computed makespan == gold),
                  but the model's own self-reported final answer != gold
correct:          model's own self-reported final answer == gold

format_fail + extraction_fail + arithmetic_fail + correct == n  (exhaustive, mutually exclusive)
"""
import json
from pathlib import Path


def load_multi(path):
    decoder = json.JSONDecoder()
    content = Path(path).read_text()
    idx, n = 0, len(content)
    recs = []
    while idx < n:
        while idx < n and content[idx] in " \n\t":
            idx += 1
        if idx >= n:
            break
        obj, end = decoder.raw_decode(content, idx)
        recs.append(obj)
        idx = end
    return recs


def critical_path_makespan(actions, dependencies):
    if not actions:
        return None
    dur = {}
    for a in actions:
        try:
            dur[a["id"]] = int(round(float(a["duration"])))
        except (KeyError, TypeError, ValueError):
            return None
    pred = {aid: [] for aid in dur}
    for d in dependencies or []:
        before, after = d.get("before"), d.get("after")
        if before not in dur or after not in dur:
            continue
        pred[after].append(before)
    succ = {aid: [] for aid in dur}
    for aid, ps in pred.items():
        for p in ps:
            succ[p].append(aid)
    indeg = {aid: len(pred[aid]) for aid in dur}
    order = [aid for aid in dur if indeg[aid] == 0]
    finish = {}
    i = 0
    while i < len(order):
        u = order[i]; i += 1
        finish[u] = max((finish[p] for p in pred[u]), default=0) + dur[u]
        for v in succ[u]:
            indeg[v] -= 1
            if indeg[v] == 0:
                order.append(v)
    if len(finish) != len(dur):
        return None  # cycle
    return max(finish.values())


def evaluate(path: str) -> dict:
    recs = load_multi(path)
    n = len(recs)
    n_format_fail = n_extraction_fail = n_arithmetic_fail = n_correct = 0
    for r in recs:
        gold = r.get("gold_seconds")
        pj = r.get("planner_json")
        if not pj:
            n_format_fail += 1
            continue
        code_answer = critical_path_makespan(pj.get("actions", []), pj.get("dependencies", []))
        if code_answer is None or gold is None or code_answer != gold:
            n_extraction_fail += 1
            continue
        # extracted graph is correct; does the model's own arithmetic match?
        if r.get("correct"):
            n_correct += 1
        else:
            n_arithmetic_fail += 1
    return {
        "n": n,
        "format_fail": n_format_fail / n if n else 0.0,
        "extraction_fail": n_extraction_fail / n if n else 0.0,
        "arithmetic_fail": n_arithmetic_fail / n if n else 0.0,
        "correct": n_correct / n if n else 0.0,
    }


if __name__ == "__main__":
    import sys
    for path in sys.argv[1:]:
        r = evaluate(path)
        total_err = r["format_fail"] + r["extraction_fail"] + r["arithmetic_fail"]
        print(f"{path}")
        print(f"  n={r['n']}  correct={r['correct']:.2f}  "
              f"format_fail={r['format_fail']:.2f}  extraction_fail={r['extraction_fail']:.2f}  "
              f"arithmetic_fail={r['arithmetic_fail']:.2f}  (sum_err={total_err:.2f}, check: correct+sum_err={r['correct']+total_err:.2f})")
