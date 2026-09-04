#!/usr/bin/env bash
set -euo pipefail

curl -fsSL https://usagiengine.com/install.sh | sh
fish -c 'fish_add_path "$HOME/.usagi/bin"'

echo
echo "Installed:"
usagi --version
echo "and put it on path."

