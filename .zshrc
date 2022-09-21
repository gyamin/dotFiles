if type brew &>/dev/null; then 
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH 
  autoload -Uz compinit 
  compinit 
fi 

export PATH="/opt/homebrew/bin:$PATH"
