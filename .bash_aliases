# Bash Aliases

# General
alias ee="exit"
alias ec="echo"
alias cl="clear;pwd"
alias la="cl;ls -la"
alias lsp="ls -1p"
alias cpd="cp -R"
alias rmd="rm -rf"
alias chx="chmod +x"
alias pg="ps ax | grep"
alias hg="history | grep"
alias his="history"
alias rds="rm .DS_Store"
alias lwc="ls | wc -l"
alias dotar="tar -czvf"
alias untar="tar -xzvf"
alias ping="ping -c 5"

# File access shortcuts
alias srb="source ~/.bash_profile"
alias vib="vi ~/.bash_profile;srb"
alias via="vi ~/.bash_aliases;srb"
alias vie="vi ~/.app_vars;srb;"
alias vid="vi ~/.app_dirs;srb;"

# Git
alias gh="github ."
alias gcl="git clone"
alias gf="git fetch"
alias gs="cl;git status"
alias gr="git remote -v"
alias gb="git branch -v"
alias gbr="git branch -r"
alias gk="git checkout"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit -m"
alias gcz="git cz"
alias gac="git commit -am"
alias gp="git push"
alias gpt="git push --tags"
alias gpl="git pull"
alias gd="git diff"
alias gl="git log"
alias guc="git reset --soft HEAD^" # Undo previous commit
alias grh="git reset HEAD" # Remove from staging
alias gri="git rebase -i"
alias gst="git stash"
alias gtg="git tag"
alias gsl="git stash list"
alias glb="git ls-remote --heads origin"
alias gplum="git checkout master; git pull upstream master"
alias gpom="git checkout master; git push origin master"
alias gphm="git checkout master; git push heroku master"

# Node.js
alias nd="node"
alias bn="babel-node"
alias na="node app"
alias ns="node server"
alias ni="node index"
alias n4="cl;nvm use v4"
alias n6="cl;nvm use v6"
alias n8="cl;nvm use v8"
alias n10="cl;nvm use v10"
alias n010="cl;nvm use v0.10"
alias n012="cl;nvm use v0.12"
alias naws="cl;nvm use v6.10"
alias nls="cl;nvm ls"
# usage: nodeup <OLD_VERSION> <NEW_VERSION>
alias nodeup="~/development/projects/dot-files/scripts/nvm-update-node.sh"
alias nv='echo "node $(node --version)" && echo "npm  $(npm --version)" && echo "yarn $(yarn --version)"'

# npm / yarn / lerna / etc.
alias npi="npm install"
alias nps="npm start"
alias npt="npm test"
alias npr="npm run"
alias npb="npm run build"
alias nprd="npm run dev"
alias nprw="npm run watch"
alias npl="npm ls --depth 0"
alias npp="npm prune"
alias npgi="npm i -g babel-cli browserify eslint glance grunt-cli gulp npm-check-updates react-native-cli webpack"
alias npo="npm outdated"
alias npd="rm npm-debug.log"
alias yn="yarn"
alias yg="yarn generate"
alias yr="yarn refresh"
alias yb="yarn build"
alias yd="yarn dev"
alias ydb="yarn bigstock:dev"
alias ysnap="yarn test:unit -- -u"
alias lr="lerna"

# MongodB
# Run "brew services start mongodb" after "brew install mongodb" before using these commands:
alias mgstop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist"
alias mgstart="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist"
alias mgrestart="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist;launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist"

# Postgres
alias pgs="'/Applications/Postgres.app/Contents/Versions/9.5/bin'/psql -p5432"

# Docker
alias dk="docker"
alias dkc="docker ps -a"
alias dki="docker images"
alias dkr="docker run -d"
alias dkl="docker logs -f"
alias dke="docker exec -it"
alias dco="docker-compose"
alias dkm="docker-machine"
#alias dmstart='eval "$(docker-machine env default)"'
#alias dmgo="dm start default;eval '$(docker-machine env default)'"

# Kubernetes
alias mk="minikube"
alias mks="mk start"
alias mk8="mk start --kubernetes-version=v1.8.0"
alias mkls="mk service list"
alias kc="kubectl"
alias kcgp="kubectl get pods --all-namespaces"
alias hl="helm"
#alias mkstart="mks;helm init;eval $(minikube docker-env)"
#alias mkstop="mk stop;mk delete"

# misc
alias am="atom ."
alias co="code ."
alias op="open ."
alias io="ionic"
alias hk="heroku"
alias vg="vagrant"
alias vb="virtualbox"
alias glc="glance --p 3030 -v"
alias chrome='open -a "Google Chrome"'
alias toc="~/development/projects/gh-md-toc"
alias brewcl="brew prune && brew cleanup -s"
alias brewup="brewcl && brew update && brew upgrade && brewcl"
alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
alias art="artillery"

