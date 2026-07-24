# !/usr/bin/env bash

set -euo pipefail

# # Ubuntu
# sudo apt install stow $(cat packages/ubuntu.txt)

# Fedora
sudo dnf copr enable scottames/ghostty
sudo dnf install stow $(cat packages/fedora.txt)

# Stow the dotfiles
stow nvim tmux

