# homebrew
if [ -e /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# ls color setting
export CLICOLOR=1

# Added by Toolbox App
export PATH="$PATH:/Users/nogami/Library/Application Support/JetBrains/Toolbox/scripts"
