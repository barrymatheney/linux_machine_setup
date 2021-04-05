#!/usr/bin/bash
function dexbash() {
  if [ $# -ne 1 ]; then
    echo "Usage: $FUNCNAME CONTAINER_ID"
    return 1
  fi

  docker exec -it $1 /bin/bash
}

a=$(uname -a)
if [[ $a  == MINGW* ]]; then  
  echo "git bash"
  winpty="winpty "
else
  echo "NOT git bash"
  winpty=""
fi

alias ll='ls -l'
alias lt='ls -tal'
alias h='history | grep '
alias la='ls -A'
alias l='ls -CF'
alias lsb='lsb_release -dirc'
alias h='history | grep '

alias geol='git ls-files --eol'
alias grv='git remote -v'
alias ga='git add .'
alias gc='git commit -m'
alias gcd='git commit -m $(date '+%Y%m%d_%H%M%S')'
alias gp='git push'
alias gs='git status'
alias grx='git remote -v'
alias gco='git checkout '
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias grm="git pull --rebase origin master"
alias gbr="git branch " #alone, will list local branch, with name arg will create
alias gbrd="git branch -d " #delete the local branch name provided, can use just the name for local, or add origin space for remote
alias gcb="git checkout -b " #supply arg to create and checkout a new branch
alias gac='ga && gcd'  #for when you haven't set up the remote yet
alias gacp='ga && gcd && gp'  #for when you want to push it too
alias gdbl='git branch -d'  #have to provide the branch name at the end
alias gdbr='git push origin --delete'   #have to provide the branch name at the end   
alias grstg='git reset'  #Reset staging area to match most recent commit, but leave the working directory unchanged
alias grstgwrk='git reset --hard'  #Reset staging AND Work area to match most recent commit, but leave the working directory unchanged

alias drn='docker rmi -f $(docker images -a | grep "<none>" | awk {"print $3"})'
alias db='docker build .'
alias di='docker images'
alias dpsa='docker ps -a'
alias drm='docker image rm '
alias dkill='docker kill  '
alias dpsa='docker ps -a'
alias dps='docker ps'
alias dgcdr='docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -e DRY_RUN=1 spotify/docker-gc'
alias dgcex='docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -e DRY_RUN=0 spotify/docker-gc'

alias drun='$winpty docker run -ti'  # for GIT BASH - just provide the container name at the end and you're good to go.  Just can't append the --name option
#alias drun="docker run -ti"  # for non-git BASH - just provide the container name at the end and you're good to go
##alias dex="winpty docker exec -ti /bin/bash " 
# Run a bash shell in the specified container.
#
alias deb='dexbash'

# Credit to <https://gist.github.com/bastman/5b57ddb3c11942094f8d0a97d461b430#remove-docker-images>
alias dclimg='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'
# Credit to <https://stackoverflow.com/a/21928864/37776>
alias drestartf='docker start $(docker ps -ql) && docker attach $(docker ps -ql)'
alias datt='docker attach'
alias dcb='docker-compose build'
alias dclogs='docker-compose logs'
alias dcu='docker-compose up'
alias ddiff='docker diff'