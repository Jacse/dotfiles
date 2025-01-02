#!/usr/bin/env sh

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# utils
brew install jq
brew install git-lfs
brew install ripgrep

# config
brew install --cask nikitabobko/tap/aerospace
brew install borders
brew install sketchybar
brew install --cask raycast

# apps
brew install neovim
brew install --cask kitty
brew install --cask neovide

# tools
brew install dive # debug docker files
brew install lazygit # git tui
brew install lsd # better ls
brew install bat # better cat
brew install fs # better find
brew isntall fzf
brew install pgcli
brew install fsouza/prettierd/prettierd # prettier as a daemon
