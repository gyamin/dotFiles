# rbenv setting
if [ -e $HOME/.rbenv/shims ]; then
    eval "$(rbenv init -)"
fi
# nodebrew setting
if [ -e $HOME/.nodebrew/current/bin ]; then
    PATH=$HOME/.nodebrew/current/bin:$PATH
fi
# phpbrew setting
if [ -f $HOME/.phpbrew/bashrc ]; then
    source $HOME/.phpbrew/bashrc
fi

export PATH

# ls color setting
export CLICOLOR=1
