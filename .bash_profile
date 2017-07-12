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

# Yarn
export PATH="$PATH:`yarn global bin`"

# git-bash-prompt - installed with brew install bash-git-prompt
if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Default
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

# Brew
# Warning from Brew: Homebrew's sbin was not found in your PATH but you have installed
# formulae that put executables in /usr/local/sbin. So add this to your ~/.bash_profile:
export PATH="/usr/local/sbin:$PATH"

