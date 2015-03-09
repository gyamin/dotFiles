# rbenv setting
if [ -e $HOME/.rbenv/shims ]; then
    eval "$(rbenv init -)"
fi
# nvm setting
if [ -f $HOME/.nvm/nvm.sh ]; then
    source $HOME/.nvm/nvm.sh
fi
# phpbrew setting
if [ -f $HOME/.phpbrew/bashrc ]; then
    source $HOME/.phpbrew/bashrc
fi
# ls color setting
export CLICOLOR=1
