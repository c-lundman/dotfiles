# !/usr/bin/env bash

set -euo pipefail
sudo apt install stow $(cat packages/ubuntu.txt)
stow nvim tmux

