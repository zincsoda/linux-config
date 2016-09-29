set -o vi

function setup_ls {
    # tell ls to be colourful
    export CLICOLOR=1
    # export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
    export LSCOLORS=GxFxCxDxBxegedabagaced
    # tell grep to highlight matches
    export GREP_OPTIONS='--color=auto'
    export COLUMNS=80
    # alias
    alias ls='COLUMNS=80 ls -FG'
}
setup_ls

function color_my_prompt {
    local __user_and_host="\[\033[01;32m\]\u@\h"
    local __time="\[\033[01;32m\][\$(date +%k:%M:%S)]"
    local __cur_location="\[\033[01;34m\]\w"
    local __git_branch_color="\[\033[31m\]"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local __prompt_tail="\[\033[35m\]$"
    local __last_color="\[\033[00m\]"
    export PS1="$__time $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
}
color_my_prompt



# history stuff

bind '"\e[A"':history-search-backward
bind '"\e[B"':history-search-forward

export HISTSIZE=1000000
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignorespace:ignoredups
export GIT_EDITOR=vim

history() {
  _bash_history_sync
  builtin history "$@"
}

_bash_history_sync() {
  builtin history -a         #[1]
  HISTFILESIZE=$HISTFILESIZE #[2]
  builtin history -c         #[3]
  builtin history -r         #[4]
}

export PROMPT_COMMAND=_bash_history_sync

