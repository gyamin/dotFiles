if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi

if [ -e /opt/homebrew/share/zsh-syntax-highlighting ]; then
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

export PATH="/opt/homebrew/bin:$PATH"


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
    [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
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


### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/nogami/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
