# !/usr/bin/env bash

set -euo pipefail

# # Ubuntu
# sudo apt install stow $(cat packages/ubuntu.txt)

# Fedora
sudo dnf copr enable scottames/ghostty
sudo dnf copr enable avengemedia/dms
sudo dnf copr enable atim/starship
sudo dnf install stow $(cat packages/fedora.txt)

# Stow the dotfiles
stow nvim tmux ghostty niri fish

# Reload user systemd after installing/updating unit files.
systemctl --user daemon-reload

# Steam flatpak
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo 
sudo flatpak install flathub com.valvesoftware.Steam

# # Keyboard repeat settings
# gsettings set org.gnome.desktop.peripherals.keyboard delay 250
# gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 20

# Change default shell
chsh -s "$(which fish)"
