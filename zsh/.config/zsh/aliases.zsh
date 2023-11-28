#!/bin/sh
alias reload="source ~/.zshrc"
alias j='z'
alias f='zi'
alias g='gitui'
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"

# get fastest mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"


# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# easier to read disk
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -5'

# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3 | head -5'

# gpg encryption
# verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

alias m="git checkout master"
alias s="git checkout stable"

#exa
alias ll="eza -lbF --git"
alias la="eza -lbhHigmuSa --time-style=long-iso --git --color-scale"
alias lx="eza -lbhHigmuSa@ --time-style=long-iso --git --color-scale"
alias llt="eza -l --git --tree"
alias lt="eza --tree --level=2"
alias llm="eza -lbGF --git --sort=modified"
alias lld="eza -lbhHFGmuSa --group-directories-first"

#tmux
alias t="tmux"
alias tn='_tmux_new() { t new -s "$1"; }; _tmux_new'
alias ta='_tmux_attach() { t attach -t "$1"; }; _tmux_attach'
alias tk='_tmux_kill() { t kill-sess -t "$1"; }; _tmux_kill'
