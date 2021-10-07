# Brew (sigh...)
# Warning from Brew: Homebrew's sbin was not found in your PATH but you have installed
# formulae that put executables in /usr/local/sbin. So add this to your ~/.bash_profile:
export GEM_PATH=~/.gem  

# PHP (sigh again...) Use v5.6 (installed via brew) on the command line instead of max OS version 7.x
export PATH="$(brew --prefix homebrew/php/php56)/bin:/usr/local/sbin:$PATH"
#export PATH="/usr/local/sbin:$PATH"

# JAVA_HOME
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-9.0.4.jdk/Contents/Home

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
# nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 

# aws cli
complete -C aws_completer aws

# Unset Docker Toolbox env vars to allow Docker for Mac to work
unset ${!DOCKER_*}

# git-bash-prompt - installed with brew install bash-git-prompt
if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

# bash completion (installed with brew)
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Kubectl Bash Completion
source <(kubectl completion bash)

# brew links
export PATH="/usr/local/opt/rock-runtime-ruby22/bin:$PATH"
export PATH="/usr/local/opt/rock-runtime-node6/bin:$PATH"
export PATH="/usr/local/opt/erlang@20/bin:$PATH"

# Yarn - install specific version globally with:
# curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version 1.12.3 
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"

# Silence zsh default shell message
export BASH_SILENCE_DEPRECATION_WARNING=1

# For enterprise-next
export NODE_CONFIG_ENV=qa

