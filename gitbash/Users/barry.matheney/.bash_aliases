#!/usr/bin/bash

alias ll='ls -l'
alias lt='ls -tal'
alias h='history | grep '
alias la='ls -A'
alias l='ls -CF'
alias lsb='lsb_release -dirc'
alias h='history | grep '

alias ga='git add .'
alias gc='git commit -m $(date '+%Y%m%d_%H%M%S')'
alias gp='git push'
alias gs='git status'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias grm="git pull --rebase origin master"
alias gac='ga && gc'  #for when you haven't set up the remote yet
alias gacp='ga && gc && gp'  #for when you want to push it too
alias gdbl='git branch -d'  #have to provide the branch name at the end
alias gdbr='git push origin --delete'   #have to provide the branch name at the end   
alias grstg='git reset'  #Reset staging area to match most recent commit, but leave the working directory unchanged
alias grstgwrk='git reset --hard'  #Reset staging AND Work area to match most recent commit, but leave the working directory unchanged

alias drn='docker rmi -f $(docker images -a | grep "<none>" | awk {"print $3"})'
alias db='docker build .'
alias di='docker images'
alias dpsa='docker ps -a'
alias dps='docker ps'
alias drun="winpty docker run -ti"  # for GIT BASH - just provide the container name at the end and you're good to go
#alias drun="docker run -ti"  # for non-git BASH - just provide the container name at the end and you're good to go
##alias dex="winpty docker exec -ti /bin/bash " 