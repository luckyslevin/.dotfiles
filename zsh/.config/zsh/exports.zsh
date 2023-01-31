#!/bin/sh
# HISTFILE="$XDG_DATA_HOME"/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000
export EDITOR="nvim"
#export TERMINAL="kitty"
export BROWSER="brave"
export PATH="$HOME/.local/bin":$PATH
export MANPAGER='nvim +Man!'
export MANWIDTH=999
export PATH=$HOME/.fnm:$PATH
export PATH="$HOME/.local/share/neovim/bin":$PATH
#export XDG_CURRENT_DESKTOP="Wayland"
#export PATH="$PATH:./node_modules/.bin"
eval "$(fnm env)"
eval "$(zoxide init zsh)"
# eval "`pip completion --zsh`"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$("$HOME/.miniconda/bin/conda" 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/.miniconda/etc/profile.d/conda.sh" ]; then
        . "$HOME/.miniconda/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/.miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export LDFLAGS="-L/usr/local/opt/postgresql@11/lib"
export CPPFLAGS="-I/usr/local/opt/postgresql@11/include"

export PATH="$PATH:/Library/flutter/bin"
export PATH="$HOME/.local/bin":$PATH
export PATH=/usr/local/opt/postgresql@11/bin:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/

export MINIO_ACCESS_KEY="minioadmin"
export MINIO_SECRET_KEY="minioadmin"
export NVM_DIR="$HOME/.nvm"
    [ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
    [ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/atcueme/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

