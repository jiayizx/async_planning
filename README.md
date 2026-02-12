# async_planning

Evaluate LLM asynchronous planning on the [`fangrulin/asynchow`](https://huggingface.co/datasets/fangrulin/asynchow) dataset.

## Repository Structure

```
├── baselines/
│   └── graph-llm-asynchow-plan/   # PLaG submodule
├── scripts/
│   ├── baselines.sh                # run prompting baselines
│   ├── plag.sh                     # run PLaG (explicit graph / BaG)
│   └── formalizer.sh               # run LLM-as-Formalizer (NL→PDDL→solver)
├── src/
│   ├── llms/                       # LLM backends (OpenAI, Claude, OpenRouter, vLLM)
│   ├── method/                     # NL→PDDL translation & OPTIC solver
│   ├── evaluation/                 # accuracy metrics
│   └── experiments/                # experiment runners
│       ├── run_baselines.py        # 0/k-shot ± CoT prompting
│       ├── run_plag.py             # PLaG explicit_graph / BaG
│       └── run_formalizer.py       # NL → PDDL 2.1 → OPTIC
├── results/                        # saved outputs (git-ignored)
└── test/                           # solver test fixtures
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

## Experiments

### 1. Prompting Baselines (0/k-shot ± CoT)

```bash
bash scripts/baselines.sh
```

Key arguments (edit the script or override inline):

| Arg | Description |
|-----|-------------|
| `--model-name` | Model id (`openai/gpt-4.1-mini`, `claude-4.5-haiku`, etc.) |
| `--icl-examples` | Number of in-context examples (0 = zero-shot) |
| `--cot` | `true` / `false` — chain-of-thought reasoning |
| `--batch` | Parallel request workers |

### 2. PLaG (Graph-based Prompting)

```bash
bash scripts/plag.sh
```

| Env var | Default | Options |
|---------|---------|---------|
| `MODEL_NAME` | `openai/gpt-4.1-mini` | any supported model |
| `TASK` | `explicit_graph` | `explicit_graph`, `bag` |
| `GRAPH_TYPE` | `edge_list` | `edge_list`, `adjacency_list`, `adjacency_matrix`, `csr` |
| `NSHOT` | `1` | `0`–`3` |

### 3. LLM-as-Formalizer (NL → PDDL 2.1 → OPTIC)

```bash
bash scripts/formalizer.sh
```

| Env var | Default |
|---------|---------|
| `MODEL_NAME` | `openai/gpt-4.1-mini` |
| `BATCH` | `16` |
| `MAX_EXAMPLES` | `100` |

The pipeline translates each problem to PDDL 2.1 via the LLM, then solves with the remote [OPTIC](https://solver.planning.domains) planner. Per-example PDDL files and plans are saved under `results/`.

## Supported LLM Backends

| Backend | Model examples | API key env var |
|---------|---------------|-----------------|
| OpenAI | `openai/gpt-4.1-mini`, `openai/gpt-4.1` | `OPENAI_API_KEY` |
| Claude | `claude-4.5-haiku`, `claude-4.5-sonnet` | `ANTHROPIC_API_KEY` |
| OpenRouter | `gemini-2.5-flash`, `deepseek-r1`, `qwen3-235b` | `OPENROUTER_API_KEY` |
| vLLM | any model on a local OpenAI-compatible server | `VLLM_BASE_URL` |
