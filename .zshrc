source ~/.bash_profile

alias ll="ls -al"
alias python=python3
# Add alias that tracks dotfiles
alias config='/usr/bin/git --git-dir=/Users/heff/.myconf/ --work-tree=/Users/heff'

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
