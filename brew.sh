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

# Remove outdated versions from the cellar.
brew cleanup