# tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
# tell grep to highlight matches
export GREP_OPTIONS='--color=auto'
# alias
alias ls='ls -FGa'
# set custom bash prompt
export PS1="\[\033[1;34m\]\!\[\033[0m\] \[\033[1;35m\]\u\[\033[0m\]:\[\033[1;35m\]\W\[\033[0m\]$ "

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


