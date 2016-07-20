# Postgres command line tools
# export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# Upgrade max open files limit 
# ulimit -n 65536
# ulimit -u 2048

# Load bash aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Load application directory aliases
if [ -f ~/.app_dirs ]; then
  . ~/.app_dirs
fi

# Load application variables
if [ -f ~/.app_vars ]; then
  . ~/.app_vars
fi

# Load nvm
export NVM_DIR="/Users/noelmeaney/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
