#!/bin/sh
# add `export ZDOTDIR="$HOME/.config/zsh"` to /etc/zsh/zshenv so that this file is sourced

export EDITOR="helix"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
