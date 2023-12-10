#!/usr/bin/sh

MODERN_NEOVIM=~/.config/modern-neovim-tmux
export MODERN_NEOVIM

rm -rf "$MODERN_NEOVIM"

mkdir -p "$MODERN_NEOVIM"/share
mkdir -p "$MODERN_NEOVIM"/nvim

stow --restow --target="$MODERN_NEOVIM"/nvim .

alias nvt='XDG_DATA_HOME=$MODERN_NEOVIM/share XDG_CACHE_HOME=$MODERN_NEOVIM XDG_CONFIG_HOME=$MODERN_NEOVIM nvim'
