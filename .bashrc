# mvim setting
alias mvim=/Applications/MacVim.app/Contents/MacOS/mvim

# phpbrew setting
if [ -f $HOME/.phpbrew/bashrc ]; then
    source $HOME/.phpbrew/bashrc
fi

# direnv settign
eval "$(direnv hook bash)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/Yasumasa/.sdkman"
[[ -s "/Users/Yasumasa/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/Yasumasa/.sdkman/bin/sdkman-init.sh"
