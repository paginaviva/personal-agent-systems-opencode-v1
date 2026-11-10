# Personal Agent System OpenCode V1

## What is this project

Personal Agent System is a personal organization and content creation system built on OpenCode. It coordinates planning, research, and writing through agents, commands, and context files. The original project includes a personal strategy orchestrator, a research assistant, and a content strategist, along with commands for daily plans, reviews, research, articles, and social media threads. It also includes context files for brand voice, blog and social media patterns, and personal goals, and uses Brave Search and Git through MCP.

A fork is a copy of a project that evolves independently and preserves attribution to the original project. This fork starts from [darrenhinde/personal-agent-systems](https://github.com/darrenhinde/personal-agent-systems) and maintains its agent, command, and context structure.

### What this fork adds

- OpenCode 1.19.5 (V1) as the target version.
- Brave, Tavily, and DeepSeek as search providers.
- DeepSeek as the default provider, selectable with `[search:brave]`, `[search:tavily]`, or `[search:deepseek]`.
- Use of the active TUI model, with no fixed models or temperatures.
- Least-privilege permissions per agent.
- DeepSeek integrated as a repository tool, without a local MCP or additional processes.
- Portable installation with `install.sh` and automatic `.env` loading at OpenCode startup.
- Documentation for installation, configuration, commands, permissions, and troubleshooting.

This fork does not include a `LICENSE` file. It preserves the reference to the original project and does not add or replace licenses.

## Requirements

- OpenCode 1.19.5.
- Node.js 20 or later, and `npx` for the Brave MCP server.
- A Tavily key and a DeepSeek key to use those providers.

## Quick start

```bash
git clone https://github.com/paginaviva/personal-agent-systems-opencode-v1.git
cd personal-agent-systems-opencode-v1
./install.sh
```

Edit `.env` and add the keys:

```bash
BRAVE_API_KEY=
TAVILY_API_KEY=
DEEPSEEK_API_KEY=
```

Then start OpenCode from the repository root:

```bash
opencode
```

Inside the TUI, select `life-strategy-agent` with `Tab` or `Shift+Tab`, or open the agent list with `Ctrl+X` and then `A`. `opencode.json` already sets it as the default agent, so it may appear selected at startup.

There is no need to export the variables manually: `.opencode/plugins/env-loader.ts` reads `.env` at startup and applies the keys to the configuration.

## Environment variables

| Variable | Required | Purpose |
|---|---|---|
| `BRAVE_API_KEY` | No | Brave search. Without a key, the MCP server does not start, but the rest of the system works. |
| `TAVILY_API_KEY` | For Tavily | Tavily search. |
| `DEEPSEEK_API_KEY` | For DeepSeek | DeepSeek search. |
| `PAS_DEFAULT_PROVIDER` | No | Default provider. Initial value: `deepseek`. |
| `PAS_MAX_RESULTS` | No | Results per search. Initial value: `5`. |
| `PAS_TIMEOUT_MS` | No | Maximum search time. Initial value: `30000`. |

The `.env` loader also accepts the aliases `TAVILY_API_RESEARCHER` and `DeepSeek_Search_API`.

## Providers and directives

| Provider | Integration | Directive |
|---|---|---|
| Brave | Existing local MCP with `npx` | `[search:brave]` |
| Tavily | Remote MCP with an `Authorization` header | `[search:tavily]` |
| DeepSeek | `pas-router` plugin tool | `[search:deepseek]` |

If there is no directive, DeepSeek is used. The orchestrator delegates to the corresponding subagent; it does not search directly.

## Agents

| Agent | Mode | Purpose |
|---|---|---|
| `life-strategy-agent` | primary | Orchestrates planning, research, and content. |
| `research-brave` | subagent | Researches with Brave. Read-only. |
| `research-tavily` | subagent | Researches with Tavily. Read-only. |
| `research-deepseek` | subagent | Researches with DeepSeek. Read-only. |
| `content-strategy-agent` | subagent | Writes and edits content in `content/`. |

No agent sets a fixed model. All use the active OpenCode session model.

## Commands

- `/research` — researches with the specified provider or with DeepSeek.
- `/blog-post` — writes an article in `content/blog-posts/`.
- `/twitter-thread` — writes a thread in `content/social-media/`.
- `/daily-plan`, `/daily-setup`, `/evening-review`, `/weekly-review`, `/monthly-review` — planning and reviews.

## Permissions

- The orchestrator writes only in `plans/` and `research/`.
- Research subagents do not write, do not use the shell, and only access their provider.
- The content agent writes only in `content/`.
- The built-in `websearch` tool is denied.
- Secrets are loaded from `.env` at startup; `.env` is not versioned.

## Structure

```text
.
├── .opencode/
│   ├── agent/
│   ├── command/
│   ├── context/
│   ├── plugins/env-loader.ts
│   ├── plugins/pas-router.ts
│   ├── package.json
│   └── package-lock.json
├── content/
├── plans/
├── research/
├── scripts/
│   ├── load-env.sh
│   └── smoke-test.sh
├── .env.example
├── .gitignore
├── install.sh
└── opencode.json
```

## Basic check

```bash
./scripts/smoke-test.sh
```

With `--live`, the script attempts one real search with Tavily and another with DeepSeek. It consumes provider quota.

## Installation in a clean environment

```bash
git clone https://github.com/paginaviva/personal-agent-systems-opencode-v1.git /tmp/pas-clean
cd /tmp/pas-clean
./install.sh
# edit .env
opencode
```

Select `life-strategy-agent` inside the TUI. The repository plugin loads `.env`; no startup scripts or manual export are required.

No absolute paths or machine-specific configurations are used.

## Troubleshooting

- **Keys are not loaded:** check that `.env` is in the repository root. `.opencode/plugins/env-loader.ts` reads it at startup; there is no need to export variables.
- **Brave does not start:** `BRAVE_API_KEY` is missing. It is optional; the other providers keep working.
- **Tavily does not respond:** check `TAVILY_API_KEY` and the connection to `https://mcp.tavily.com/mcp/`.
- **DeepSeek does not respond:** check `DEEPSEEK_API_KEY` and the account balance.
- **OpenCode does not load an agent:** run `opencode agent list` and `opencode debug agent <name>`.
- **`@opencode-ai/plugin` is missing:** OpenCode installs the dependencies from `.opencode/package.json` at startup. If it fails, check the connection and reopen OpenCode.

## Attribution

Based on [darrenhinde/personal-agent-systems](https://github.com/darrenhinde/personal-agent-systems), commit `5f6a35b`. This fork adds the Tavily and DeepSeek providers, provider selection by directive, per-agent permissions, and adaptation to the active OpenCode 1.19.5 model.
