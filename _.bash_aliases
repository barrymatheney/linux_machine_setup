

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
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"


alias db='docker build .'
alias di='docker images'
alias drn='docker rmi -f $(docker images -a | grep "<none>" | awk {"print $3"})'
alias dpsa='docker ps -a'
alias dps='docker ps'