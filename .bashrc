# colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


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

if [ -f ~/git-completion.bash ]; then
   . git-completion.bash
fi
