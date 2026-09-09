# Agentic Software Factory

Branded software factory built on **OpenHands Agent Canvas** (MIT) + the **[clintivins/skills](https://github.com/clintivins/skills)** catalogue over MCP.

> OpenHands = hands and UI. Skills catalogue = playbooks and guardrails. MCP = the conveyor belt.

## Architecture

```
Goal / GitHub issue
    → Agent Canvas (OpenHands)
    → skills-mcp (list / search / get_skill)
    → SKILL.md procedure
    → sandbox work
    → draft PR + assessment report
```

## Phase 1 status

- [x] Skills catalogue + MCP server (`clintivins/skills`)
- [x] Local OpenHands MCP config templates
- [x] Agent Canvas CLI available (`@openhands/agent-canvas`)
- [ ] Wire MCP in Canvas UI and smoke-test `search_skills`
- [ ] First automation: labelled issue → draft PR

## Prerequisites (macOS)

- Node.js **≥ 24** (Agent Canvas 1.17+); `uv` installed
- Python 3.11+ with `clintivins/skills` checked out (or sibling path)
- GitHub CLI authenticated (`gh auth status`)

## Quick start

```bash
# 1) Skills MCP (from skills repo)
cd /path/to/skills
source .venv/bin/activate   # or: python -m venv .venv && pip install -e ./mcp-server
export SKILLS_ROOT="$(pwd)/skills"

# 2) Start Agent Canvas
agent-canvas
# open http://localhost:8000
```

In Agent Canvas: **Customize → MCP Servers** → add stdio server from `config/mcp.skills.example.json`.

Smoke-test prompt:

> Search my skills catalogue for kubernetes hardening, then summarize the top skill procedure outline.

## Repo layout

| Path | Purpose |
|------|---------|
| `docs/` | Architecture and runbooks |
| `config/` | OpenHands / MCP example configs |
| `scripts/` | Start helpers |
| `AGENTS.md` | Factory house rules for agents |

## Related

- Skills catalogue: https://github.com/clintivins/skills
- OpenHands Agent Canvas: https://docs.openhands.dev/openhands/usage/agent-canvas/setup
- License: MIT (this repo). OpenHands core is MIT; do not use OpenHands trademarks on a white-labelled UI without permission.
