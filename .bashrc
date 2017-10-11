[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export WORKON_HOME=$HOME/.venvs
 source /usr/local/bin/virtualenvwrapper.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
