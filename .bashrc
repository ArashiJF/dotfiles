NVM_DIR=${HOME}/.nvm
NVM_COMPLETION=true

alias ls="ls --color=auto"
alias cat="batcat"
alias vi="vim"
alias tomine="cd ~/Documents/workspace"

# Pyenv set up
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Golang added to Path
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin
