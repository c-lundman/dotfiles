# !/usr/bin/env bash

set -euo pipefail

# # Ubuntu
# sudo apt install stow $(cat packages/ubuntu.txt)

# Fedora
sudo dnf copr enable scottames/ghostty
sudo dnf copr enable avengemedia/dms
sudo dnf install stow $(cat packages/fedora.txt)

# Stow the dotfiles
# stow nvim tmux ghostty niri fuzzel mako waybar swaybg swaylock swayidle
stow nvim tmux ghostty niri

# Reload user systemd after installing/updating unit files.
systemctl --user daemon-reload

# Ensure services are started whenever niri.service starts.
# services=(
#     waybar
#     mako
#     swaybg
#     swayidle
# )
#
# # for svc in "${services[@]}"; do
# #     systemctl --user add-wants niri.service "${svc}.service"
# # done

systemctl --user add-wants niri.service dms

# # Start the services if they aren't already running.
# # If they are running, restart them so config changes take effect.
# for svc in "${services[@]}"; do
#     if systemctl --user is-active --quiet "${svc}.service"; then
#         systemctl --user restart "${svc}.service"
#     else
#         systemctl --user start "${svc}.service"
#     fi
# done

# Steam flatpak
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo 
sudo flatpak install flathub com.valvesoftware.Steam

# Keyboard repeat settings
gsettings set org.gnome.desktop.peripherals.keyboard delay 250
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 20

# Change default shell
chsh -s "$(which fish)"

