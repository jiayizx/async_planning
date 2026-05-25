<div align="center">
<h1>Robust Asynchronous Planning via Auto-Formalization</h1>
</div>

---

We study LLM-based asynchronous planning across three settings of increasing difficulty: **action-constrained** (durations + precedence), **state-constrained** (grounded states + resources + agents), and **online** (execution-time replanning). We compare two planning interfaces — **Planner** and **Formalizer** — across four LLMs and four benchmarks, and show that the choice of formal representation, not model capacity, primarily determines whether planning scales.

## Methods

| Method | Description |
|--------|-------------|
| **Planner** | LLM directly outputs a schedule or makespan from natural language |
| **PDDL2.1 Formalizer** | LLM translates the problem to PDDL2.1; solved with [OPTIC](https://solver.planning.domains) |
| **CP-SAT Formalizer** | LLM outputs a structured scheduling spec (actions + dependencies + resources); solved with CP-SAT |

## Benchmarks

| Dataset | Setting | Size | Axis |
|---------|---------|------|------|
| **AsyncHow** | Action-constrained | 320 | Duration and dependency extraction |
| **AsyncPlan-XXL** | Action-constrained | 600 (50 × 12 sizes, 5–100 nodes) | Critical-path scaling |
| **Robo Challenge** | State-constrained | 140 (20 × 7 splits) | Grounded robotic constraints |
| **Online Robo Challenge** | Online | 140 (20 × 7 splits) | Dynamic replanning |

## Key Results

### AsyncPlan-XXL: plan accuracy by graph size

| Method | S5 | S20 | S50 | S80 | S100 | Avg |
|--------|----|-----|-----|-----|------|-----|
| CP-SAT Formalizer | 93% | 99% | 97% | 93% | 83% | **94%** |
| PDDL2.1 Formalizer | 13% | 8% | 6% | 0% | 0% | 5% |
| Planner | 96% | 70% | 19% | 10% | 5% | 40% |

CP-SAT Formalizer maintains ~94% average accuracy from 5 to 100 steps. Planner and PDDL2.1 collapse sharply with graph size.

### Robo Challenge: plan accuracy by split (averaged across 4 LLMs)

| Split | Planner | PDDL2.1 | CP-SAT |
|-------|---------|---------|--------|
| Easy | 97.5% | 98.8% | **100%** |
| Medium | 71.2% | 97.5% | **100%** |
| Hard Station | 28.8% | 68.8% | **97.5%** |
| Hard Temporal | 53.8% | 48.8% | **100%** |
| Hard Multi-Agent | 17.5% | 6.2% | **97.5%** |
| Hard Optimization | 3.8% | 0.0% | **100%** |
| Hard High-Speedup | 6.2% | 37.5% | **96.2%** |
| **Average** | 39.8% | 51.1% | **98.8%** |

### Online Robo Challenge: one-shot vs. state-aware repair

| Method | Offline | Online (one-shot) | Online (state-aware repair) |
|--------|---------|-------------------|-----------------------------|
| CP-SAT Formalizer | 98.8% | 46.1% | **84.5%** |
| PDDL2.1 Formalizer | 51.1% | 0.7% | — |
| Planner | 39.8% | 23.9% | — |

### Faithfulness diagnostics on AsyncPlan-XXL

| Metric | Planner | PDDL2.1 | CP-SAT |
|--------|---------|---------|--------|
| Dependency Recall | 61.1% | 10.4% | **99.2%** |
| Goal Completeness | 61.4% | 1.1% | **100%** |
| Duration Match | 61.3% | 24.2% | **99.8%** |
| Plan Accuracy | 39.3% | 5.2% | **94.2%** |

## Repository Structure

```
├── data/
│   ├── async_planning/          # AsyncPlan-XXL synthetic graphs (nodes5–100, n=50 each)
│   ├── robo_async_challenge_v2/ # Robo Challenge tasks (7 splits × 20 instances)
│   └── robo_async_online/       # Online Robo Challenge episodes (7 splits × 20 episodes)
├── src/
│   ├── llms/                    # LLM backends (OpenAI, Anthropic, OpenRouter, vLLM)
│   ├── method/                  # NL→PDDL (OPTIC) and NL→JSON (CP-SAT) pipelines
│   ├── evaluation/              # Plan accuracy + faithfulness diagnostics
│   └── experiments/             # Experiment runners per benchmark and method
├── scripts/                     # Shell scripts to reproduce all experiments
├── baselines/
│   └── graph-llm-asynchow-plan/ # PLaG submodule
└── results/                     # Saved outputs (git-ignored)
```

## Setup

```bash
pip install -r requirements.txt
git submodule update --init --recursive
```

Set at least one API key:

```bash
export OPENAI_API_KEY=...
export OPENROUTER_API_KEY=...
export ANTHROPIC_API_KEY=...
```

## Running Experiments

### AsyncHow

```bash
bash scripts/asynchow_cpsat_formalizer.sh
bash scripts/asynchow_formalizer.sh
bash scripts/asynchow_planner.sh
```

### AsyncPlan-XXL

```bash
bash scripts/synth_cpsat_formalizer.sh
bash scripts/synth_formalizer.sh
bash scripts/synth_planner.sh
```

### Robo Challenge

```bash
bash scripts/robo_async_cpsat_formalizer.sh
bash scripts/robo_async_formalizer.sh
bash scripts/robo_async_planner.sh
```

### Online Robo Challenge

```bash
bash scripts/robo_async_online_cpsat_formalizer.sh
bash scripts/robo_async_online_formalizer.sh
bash scripts/robo_async_online_planner.sh
bash scripts/robo_async_online_state_aware_cpsat_repair.sh
```

### Key Arguments

| Argument | Description |
|----------|-------------|
| `--model-name` | Model ID (`openai/gpt-5-mini`, `openrouter/gemini-3-flash`, etc.) |
| `--cot` | Enable chain-of-thought reasoning |
| `--icl-examples` | Number of in-context examples (0 = zero-shot) |
| `--batch` | Parallel request workers |
| `--max-examples` | Limit number of examples |

## Supported LLM Backends

| Backend | Example model IDs | API key |
|---------|-------------------|---------|
| OpenAI | `openai/gpt-5-mini`, `openai/gpt-4.1` | `OPENAI_API_KEY` |
| Anthropic | `claude-sonnet-4-6`, `claude-opus-4-7` | `ANTHROPIC_API_KEY` |
| OpenRouter | `openrouter/gemini-3-flash`, `deepseek/deepseek-v4-flash`, `qwen3.6-35b-a3b` | `OPENROUTER_API_KEY` |
| vLLM | any model on a local OpenAI-compatible server | `VLLM_BASE_URL` |
