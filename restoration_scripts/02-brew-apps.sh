#!/usr/bin/env bash

echo "Installing Homebrew apps..."

# Check if Homebrew is installed
if ! command -v brew &>/dev/null; then
    echo "Homebrew not found. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# CLI tools
brew install docker

# GUI Applications (casks)
brew install --cask logi-options+
brew install --cask brave-browser
brew install --cask iterm2
brew install --cask warp
brew install --cask raycast
brew install --cask notion
brew install --cask notion-calendar
brew install --cask contexts
brew install --cask cursor
brew install --cask discord
brew install --cask karabiner-elements
brew install --cask obsbot-center
brew install --cask runjs
brew install --cask shottr
brew install --cask topnotch
brew install --cask telegram
brew install --cask whatsapp
brew install --cask notion-calendar

# Other tools
brew install duti
brew install asmvik/formulae/skhd


# Development
brew install pyenv
brew install pyenv-virtualenv
brew install postgresql@15
brew install redis
brew install lsd
brew install bat
brew install htop
brew install btop
brew install dust
brew install fd
brew install zoxide
brew install eza
brew install bottom
brew install lazygit
brew install fzf
brew install bfs
brew install fd
brew install ripgrep
brew install ugrep
brew install mise


# Starting services
brew services start postgresql@15
brew services start redis
brew services start skhd

echo "Homebrew apps installed"
