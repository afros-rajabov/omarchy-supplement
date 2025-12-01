#!/bin/bash

# Install Zsh
if ! command -v zsh &>/dev/null; then
    yay -S --noconfirm --needed fish
    sudo pacman -S omarchy-fish
    omarchy-setup-fish
fi
