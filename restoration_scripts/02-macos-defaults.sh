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

# Scrollbar when scrolling
defaults write NSGlobalDomain AppleShowScrollBars -string "WhenScrolling"

# Scrolling direction natural
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true

# Disable manual icon arrangement (force grid alignment)
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Dock auto-hide
defaults write com.apple.dock autohide -bool true

# Dock to the bottom
defaults write com.apple.dock orientation -string "bottom"

# Top bar auto-hide
defaults write NSGlobalDomain _HIHideMenuBar -bool true

# Apply Dock changes
killall Dock
killall Finder

echo "macOS defaults applied"
