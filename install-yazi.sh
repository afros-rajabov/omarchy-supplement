#!/bin/bash

# Install Yazi
if ! command -v zsh &>/dev/null; then
	yay -S --noconfirm --needed yazi
fi
