# async_planning

Minimal repo to evaluate LLM async planning on `fangrulin/asynchow`.

## Structure
- `data/` raw/processed data (empty by default)
- `src/` code
- `results/` model outputs
- `evaluation/` evaluation summaries

## Quickstart
```
pip install -r requirements.txt
```

Zero-shot (no CoT), OpenRouter:
```
export OPENROUTER_API_KEY=...
python -m src.run --mode baseline --llm openrouter --model <model-id> --k 0 --cot false
```

K-shot with CoT:
```
python -m src.run --mode baseline --llm openrouter --model <model-id> --k 4 --cot true
```

vLLM (OpenAI-compatible server):
```
export VLLM_BASE_URL=http://localhost:8000/v1
python -m src.run --mode baseline --llm vllm --model <model-id>
```