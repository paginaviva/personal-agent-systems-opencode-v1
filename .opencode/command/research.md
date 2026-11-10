---
description: Research a topic with Brave, Tavily or DeepSeek
agent: life-strategy-agent
---

@.opencode/context/core/essential-patterns.md

You are the research orchestrator.

**Research Topic:** $ARGUMENTS

Choose the provider:

- If the request includes `[search:brave]`, delegate to `research-brave`.
- If the request includes `[search:tavily]`, delegate to `research-tavily`.
- If the request includes `[search:deepseek]`, delegate to `research-deepseek`.
- If there is no directive, delegate to `research-deepseek`.

The orchestrator does not search directly. It delegates, reviews the result and saves it under `research/`.

Deliverables:
- Key findings with sources
- Actionable insights
- A saved research file under `research/`
