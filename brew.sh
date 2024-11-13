#!/usr/bin/env sh

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# utils
brew install jq
brew install git-lfs

# config
brew install --cask nikitabobko/tap/aerospace
brew install borders
brew install sketchybar
brew install --cask raycast

# apps
brew install neovim
brew install --cask kitty

# tools
brew install dive # debug docker files
brew install lazygit # git tui
brew install lsd # better ls
brew install bat # better cat
brew install pgcli