#!/bin/sh
# HISTFILE="$XDG_DATA_HOME"/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000
export BROWSER="brave"
export MANWIDTH=999
eval "$(zoxide init zsh)"
# eval "`pip completion --zsh`"

# pnpm
export PNPM_HOME="/Users/atcueme/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

