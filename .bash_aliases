# Bash Aliases

# General
alias eo="echo"
alias cl="clear;pwd"
alias la="cl;ls -la"
alias cpd="cp -r"
alias rmd="rm -rf"
alias cx="chmod +x"
alias pg="ps ax | grep"
alias hg="history | grep"
alias untar="tar xvf"

alias srb="source ~/.bash_profile"
alias vib="vi ~/.bash_profile;srb"
alias via="vi ~/.bash_aliases;srb"
alias vie="vi ~/.app_vars;srb;"

alias glc="glance --p 3030 -v"
alias am="atom ."
alias op="open ."
alias gt="grunt"

# Directories 
alias me="cd ~/;cl"
alias cdd="cd ~/development/;la"
alias cdp="cd ~/development/projects/;la"
alias cdt="cd ~/development/tutorials/;la"
alias cdv="cd ~/development/dev-notes/;la"
alias nemo="cd ~/development/projects/nemo-analytics/;nvm use v0.10;la"
alias socg="cd ~/development/projects/socialguard/;nvm use v0.12;la"

# Git
alias gcl="git clone"
alias gs="cl;git status"
alias gr="git remote -v"
alias gb="git branch -v"
alias gk="git checkout"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit -m"
alias gac="git commit -a -m"
alias gp="git push"
alias gpt="git push --tags"
alias gpl="git pull"
alias gd="git diff"
alias gl="git log"
alias gri="git rebase -i"

# Docker
alias dk="docker"
alias dkc="docker ps -a"
alias dki="docker images"
alias dkr="docker run"
alias fig="docker-compose"
alias dm="docker-machine"
alias vb="virtualbox"
#alias dmstart='eval "$(docker-machine env default)"'
#alias dmgo="dm start default;eval '$(docker-machine env default)'"

# MongodB
alias mgstop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist"
alias mgstart="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist"
alias mgrestart="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist;launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist"

# Node.js
alias no="node"
alias bn="babel-node"
alias na="node app"
alias ns="node server"
alias ni="node index"
alias n4="cl;nvm use v4"
alias n5="cl;nvm use v5"
alias n6="cl;nvm use v6"
alias n10="cl;nvm use v0.10"
alias n12="cl;nvm use v0.12"

# npm
alias nps="npm start"
alias npt="npm test"
alias npr="npm run"
alias npl="npm ls --depth 0"
alias npcc="npm cache clean"
alias npg="npm i -g babel-cli browserify eslint glance grunt-cli gulp npm-check-updates react-native-cli webpack"

# bower
alias br="bower"
alias bcc="bower cache clean"

# misc
alias chrome='open -a "Google Chrome"'
alias brewup="brew cleanup && brew update && brew upgrade"
alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
alias vg="vagrant"

