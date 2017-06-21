#!/bin/sh

. $HOME/.profile.d/colors.sh
. $HOME/.profile.d/git-completion.sh
. $HOME/.profile.d/git-prompt.sh

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

# --- Prompt
POINTER_CHAR="⬆"
PREINFO="\n$POINTER_CHAR $BIBLUE[ "$BLUE"exit: $WHITE\$?$BIBLUE ] [ "$BLUE"time: $WHITE\t$BIBLUE ]$END_COLOR"
PREGIT="$PREINFO\n$WHITE\u $PURPLE@ $BLUE\h$WHITE \w$END_COLOR"
POSTGIT=" $RED\$$END_COLOR "

export PROMPT_COMMAND="__git_ps1 \"$PREGIT\" \"$POSTGIT\""
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"
# ---
