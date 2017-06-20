#!/bin/sh

# --- Aliases
alias grep='grep --color=auto -r'
alias hangoutsrage='sudo killall AppleCameraAssistant'
alias vg='vagrant'
# ---

PATH="$PATH:~/.bin"
PATH=/Users/max/bin:${PATH}
PATH=/usr/local/bin:${PATH}
PATH=/usr/local/sbin:${PATH}
PATH=/usr/local/lib/node_modules:${PATH}

PG=/Users/max/src/playground
GOSRC=/usr/local/Cellar/go/1.1

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
