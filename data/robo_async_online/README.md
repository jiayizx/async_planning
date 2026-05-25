# Robo-Async Online Seed Episodes

This directory contains seed episodes for an online version of Robo-Async.

These files are intentionally separate from `data/robo_async_challenge_v2/tasks`
because the current runners expect static one-shot planning tasks, while these
episodes require staged re-planning after mid-execution events.

See `docs/robo_async_online_design.md` for the benchmark rationale and schema.

Current family coverage vs. `robo_async_challenge_v2`:

- `easy` -> `online_easy`
- `medium` -> `online_medium`
- `hard_station` -> `online_hard_station`
- `hard_temporal` -> `online_hard_temporal`
- `hard_multiagent` -> `online_hard_multiagent`
- `hard_optimization` -> `online_hard_optimization`
- `hard_high_speedup` -> `online_hard_high_speedup`

Each online split has 20 generated episodes. The online version keeps the
corresponding static split mechanism, then injects additional work or constraints
through event deltas.
