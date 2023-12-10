#!/bin/sh

MNV_APP_NAME=modern-neovim-tmux
MNV_APP_CONFIG=~/.config/$MNV_APP_NAME
export MNV_APP_NAME MNV_APP_CONFIG

rm -rf $MNV_APP_CONFIG && mkdir -p $MNV_APP_CONFIG

stow --restow --target=$MNV_APP_CONFIG .

alias nvt="NVIM_APPNAME=$MNV_APP_NAME nvim"
