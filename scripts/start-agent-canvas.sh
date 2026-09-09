#!/usr/bin/env bash
set -euo pipefail
# Requires Node >= 24 for Agent Canvas 1.17+
if command -v agent-canvas >/dev/null 2>&1; then
  exec agent-canvas "$@"
fi
exec npx --yes @openhands/agent-canvas "$@"
