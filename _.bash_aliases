#!/usr/bin/bash
function dexbash() {
  if [ $# -ne 1 ]; then
    echo "Usage: $FUNCNAME CONTAINER_ID"
    return 1
  fi

  docker exec -it $1 /bin/bash
}

function git_list_all_remote_branches() {
  git branch -r | grep -v '\->' | while read remote; do echo "${remote#origin/} $remote"; done
}

function git_pull_all_remote_branches() {
  git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; done
  git fetch --all && git pull --all
  git pull --all
}




function git_list_every_file_that_ever_existed_in_repo() {
  git log --name-status | sed -ne 's/^A[^u]//p' | sort -u
}




a=$(uname -a)
if [[ $a  == MINGW* ]]; then
  echo "git bash"
  winpty="winpty "
else
  echo "NOT git bash"
  winpty=""
fi


#New Bash Aliases

alias ll='ls -l'
alias lt='ls -tal'
alias h='history | grep '
alias la='ls -A'
alias l='ls -CF'
alias lsb='lsb_release -dirc'
alias h='history | grep '

alias ga='git add .'
alias gc="git commit -m $(date '+%Y%m%d_%H%M%S')"
alias gp='git push'
alias gs='git status'
alias gco='git checkout '
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gacp='ga && gc && gp'

alias db='docker build .'
alias di='docker images'
alias drn='docker rmi -f $(docker images -a | grep "<none>" | awk {"print $3"})'
alias dpsa='docker ps -a'
alias dps='docker ps'
alias dgcdr='docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -e DRY_RUN=1 spotify/docker-gc'
alias dgcex='docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -e DRY_RUN=0 spotify/docker-gc'
alias dcmp="docker-compose "



alias -- -='cd -'
alias ..='cd ../'
alias ...='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'
alias _='sudo'

alias l='ls -lah'
alias la='ls -lAh'
alias less='less -FSRXc'
alias ll='ls -lAFh'
alias ls='ls --color=auto'
alias lsa='ls -lah'
alias md='mkdir -p'
alias mkdir='mkdir -pv'
alias mv='mv -iv'
alias nano='nano -W'
alias p='bm -p'
alias path='echo -e ${PATH//:/\\n}'
alias please='sudo'
alias rd='rmdir'
alias s='bm -a'
alias show_options='shopt'
alias src='source ~/.bashrc'
alias wget='wget -c'




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
alias glrb=git_list_all_remote_branches
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
alias gsef=git_list_every_file_that_ever_existed_in_repo
alias gpall=git_pull_all_remote_branches
alias gtracked='git ls-tree -r master --name-only' # git a list of all files CURRENTLY being tracked



alias drn='docker rmi -f $(docker images -a | grep "<none>" | awk {"print $3"})'
alias db='docker build .'
alias di='docker images'
alias dpsa='docker ps -a'
alias drm='docker image rm '
alias dk='docker kill  '
alias dpsa='docker ps -a'
alias dps='docker ps'
alias dgcdr='docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -e DRY_RUN=1 spotify/docker-gc'
alias dgcex='docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -e DRY_RUN=0 spotify/docker-gc'
alias drun='$winpty docker run -ti'  # winpty is assigned at the top, works for any bash now...
alias dex="winpty docker exec -ti /bin/bash "
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
alias fa='cat ~/.bash_aliases | grep '
alias zz='fa '