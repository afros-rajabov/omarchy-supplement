#!/bin/bash

# Install all packages in order
./install-fish.sh
./install-asdf.sh
# ./install-alacritty.sh
./install-ghostty.sh
# ./install-kitty.sh
./install-tmux.sh
./install-stow.sh
./install-dotfiles.sh
./install-hyprland-overrides.sh

./set-shell.sh
