# Factory architecture

## Components

1. **Agent Canvas** — browser control centre (conversations, terminals, automations).
2. **Agent backend** — local process (Phase 1); Docker/VM later for stronger sandboxing.
3. **skills-mcp** — stdio MCP exposing `list_categories`, `list_skills`, `search_skills`, `get_skill`, `get_skill_summary`.
4. **Skills catalogue** — `skills/<category>/<slug>/SKILL.md` playbooks (CIS, NIST, ISO, Azure, etc.).
5. **GitHub** — intake (issues/PRs) and output (draft PRs + reports).

## Happy path (v1)

1. Human (or automation) opens a conversation with a goal or issue URL.
2. Agent calls `search_skills` then `get_skill` / `get_skill_summary`.
3. Agent follows the skill procedure against the workspace repo.
4. Agent opens a **draft** PR and attaches an assessment markdown report.
5. Human reviews and merges.

## Guardrails

See root `AGENTS.md`. Never invent certification claims; keep secrets out of git; prefer draft PRs over auto-merge in v1.
