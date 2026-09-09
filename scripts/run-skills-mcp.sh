#!/usr/bin/env bash
set -euo pipefail
SKILLS_REPO="${SKILLS_REPO:-$HOME/skills}"
export SKILLS_ROOT="${SKILLS_ROOT:-$SKILLS_REPO/skills}"
PY="${SKILLS_REPO}/.venv/bin/python"
if [[ ! -x "$PY" ]]; then
  echo "Missing $PY — create venv and pip install -e $SKILLS_REPO/mcp-server" >&2
  exit 1
fi
exec "$PY" -m skills_mcp
