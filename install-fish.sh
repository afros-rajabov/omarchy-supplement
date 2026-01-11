#!/bin/bash

# Install Fish
if ! command -v fish &>/dev/null; then
	yay -S --noconfirm --needed fish
	sudo pacman -S omarchy-fish
	omarchy-setup-fish
fi
