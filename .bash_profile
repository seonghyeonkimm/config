export WORKON_HOME=$HOME/.venvs
source /usr/local/bin/virtualenvwrapper.sh

# bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# PS1 original
#export PS1='\h:\W \u\$ '
# PS1 customized
export PS1='\[\e[31m\]\u\[\e[m\] \w \[\e[34m\]$(vcprompt)\[\e[m\]\[\e[32m\]\\$\[\e[m\] '

export CLICOLOR=1
export PATH="$PATH"
export BROWSER=open

alias vim="nvim"
alias vi="nvim"
alias nvi="nvim"

# added by Anaconda3 4.4.0 installer
export PATH="$PATH:/anaconda/bin"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
