# source .bashrc
if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi

# rbenv setting
if [ -e $HOME/.rbenv/shims ]; then
    eval "$(rbenv init -)"
fi

# nodebrew setting
if [ -e $HOME/.nodebrew/current/bin ]; then
    PATH=$HOME/.nodebrew/current/bin:$PATH
fi

## phpbrew setting
#if [ -f $HOME/.phpbrew/bashrc ]; then
#    source $HOME/.phpbrew/bashrc
#fi

## activator setting
#if [ -e $HOME/.activator/bin ]; then
#    PATH=$HOME/.activator/bin:$PATH
#fi

export PATH

# ls color setting
export CLICOLOR=1

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/Yasumasa/.sdkman"
[[ -s "/Users/Yasumasa/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/Yasumasa/.sdkman/bin/sdkman-init.sh"
