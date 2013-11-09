# tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
# tell grep to highlight matches
export GREP_OPTIONS='--color=auto'
# alias
alias ls='ls -FGa'
# set custom bash prompt
export PS1="\[\033[1;34m\]\!\[\033[0m\] \[\033[1;35m\]\u\[\033[0m\]:\[\033[1;35m\]\W\[\033[0m\]$ "

