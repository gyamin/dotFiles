# source .bashrc
if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi

# homebrew
if [ -e /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# ===================================
# develop language enviroment
# ===================================
# rbenv 
if [ -e $HOME/.rbenv ]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)" 
fi

# nodeenv
if [ -e $HOME/.nodenv ]; then
    export PATH="$HOME/.nodenv/bin:$PATH"
    eval "$(nodenv init -)"
fi

# pyenv
if [ -e $HOME/.pyenv ]; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init --path)"
    if [ -n "$PS1" -a -n "$BASH_VERSION" ]; then
        source ~/.bashrc;
    fi
fi
# pyenv-virtualenv
if [ -e $HOME/.pyenv/plugins/pyenv-virtualenv ]; then
    eval "$(pyenv virtualenv-init -)"
fi

# goenv
if [ -e $HOME/.goenv ]; then
    export GOENV_ROOT="$HOME/.goenv"
    export PATH="$GOENV_ROOT/bin:$PATH"
    eval "$(goenv init -)"
fi

# phpenv
if [ -e $HOME/.phpenv ]; then
    export PATH="$HOME/.phpenv/bin:$PATH"
    eval "$(phpenv init -)"
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# mysql-client
if [ -e /usr/local/opt/mysql-client/bin ]; then
    export PATH="/usr/local/opt/mysql-client/bin:$PATH"
fi

# ls color setting
export CLICOLOR=1
