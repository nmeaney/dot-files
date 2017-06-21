# Postgres command line tools
# export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home

# Upgrade max open files limit (for MongoDB?)
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
export NVM_DIR="/Users/$(whoami)/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# aws cli
complete -C aws_completer aws

# Unset Docker Toolbox env vars to allow Docker for Mac to work
unset ${!DOCKER_*}

# git-bash-prompt - installed with brew install bash-git-prompt
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

