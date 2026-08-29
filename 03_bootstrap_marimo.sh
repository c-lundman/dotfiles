#!/usr/bin/env bash
set -euo pipefail

# Install or upgrade marimo as an isolated command-line tool.
uv tool install --upgrade 'marimo[recommended]'

# Install marimo-pair globally for Codex.
# (Deno lets us run the skills CLI without requiring Node.js)
uvx deno -A npm:skills add marimo-team/marimo-pair \
  --global --agent codex --yes

echo
echo "Installed:"
marimo --version
echo
echo "Start a pairable notebook with:"
echo "  marimo edit notebook.py --no-token"
echo
echo "Restart Codex so it discovers the new skill."
