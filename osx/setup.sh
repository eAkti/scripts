#!/usr/bin/env bash

# A script to set up a new mac.

# Helpers
function msg { echo -e '\033[1;32m'"$1"'\033[0m'; }
function warn { echo -e '\033[1;33m'"$1"'\033[0m'; }
function error { echo -e '\033[1;31mERROR: '"$1"'\033[0m'; }

msg "Install starting. You may be asked for your password (for sudo)."

# Homebrew
if hash brew &> /dev/null; then
    msg "Homebrew already installed"
else
    warn "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew
brew update && brew bundle --file=resources/Brewfile

# Cleanup
brew cleanup && brew doctor

msg "Done."