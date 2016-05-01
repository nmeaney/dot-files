# load nvm
export NVM_DIR="/Users/nmeaney/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Upgrade max open files limit 
ulimit -n 65536
ulimit -u 2048

# Load bash aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Load application variables
if [ -f ~/.app_vars ]; then
  . ~/.app_vars
fi
