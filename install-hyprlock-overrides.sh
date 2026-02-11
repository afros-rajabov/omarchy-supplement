#!/bin/bash

set -e

HYPRLOCK_CONFIG="$HOME/.config/hypr/hyprlock.conf"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OVERRIDES_CONFIG="$SCRIPT_DIR/hyprlock-overrides.conf"
SOURCE_LINE="source = $OVERRIDES_CONFIG"

# Check if hyprlock config exists
if [ ! -f "$HYPRLOCK_CONFIG" ]; then
	echo "Hyprlock config not found at $HYPRLOCK_CONFIG"
	echo "Please install hyprlock first"
	exit 1
fi

# Check if overrides config exists
if [ ! -f "$OVERRIDES_CONFIG" ]; then
	echo "Overrides config not found at $OVERRIDES_CONFIG"
	exit 1
fi

# Check if source line already exists in hyprlock.conf
if grep -Fxq "$SOURCE_LINE" "$HYPRLOCK_CONFIG"; then
	echo "Source line already exists in $HYPRLOCK_CONFIG"
else
	echo "Adding source line to $HYPRLOCK_CONFIG"
	echo -n >"$HYPRLOCK_CONFIG"
	echo "" >>"$HYPRLOCK_CONFIG"
	echo "$SOURCE_LINE" >>"$HYPRLOCK_CONFIG"
	echo "Source line added successfully"
fi

echo "Hyprlock overrides setup complete!"
