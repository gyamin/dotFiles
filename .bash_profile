# source .bashrc
if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi

# rbenv 
if [ -e $HOME/.rbenv ]; then
    eval "$(rbenv init -)" 
fi

# nodeenv
if [ -e $HOME/.nodenv ]; then
    eval "$(nodenv init -)"
fi

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# goenv
if [ -e $HOME/.goenv ]; then
    export PATH="$HOME/.goenv/shims:$PATH"
    eval "$(goenv init -)"
fi

# ls color setting
export CLICOLOR=1
