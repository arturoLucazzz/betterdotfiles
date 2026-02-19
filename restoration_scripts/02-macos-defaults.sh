#!/usr/bin/env bash

echo "Applying macOS defaults..."

# Fastest trackpad speed
defaults write -g com.apple.trackpad.scaling 3

# Dock: Scale minimize effect
defaults write com.apple.dock mineffect -string "scale"

# Dock: Position bottom
defaults write com.apple.dock orientation -string "bottom"

# Dock: Auto-hide
defaults write com.apple.dock autohide -bool true

# Dock: Size ~50%
defaults write com.apple.dock tilesize -int 64

# Apply Dock changes
killall Dock

echo "macOS defaults applied"
