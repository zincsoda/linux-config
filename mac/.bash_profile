# Paths
export PATH="/usr/local/bin:$PATH"
PYTHONPATH=${PYTHONPATH}:/usr/local/lib/python2.7/site-packages/
source /usr/local/bin/virtualenvwrapper.sh

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/git-completion.bash
