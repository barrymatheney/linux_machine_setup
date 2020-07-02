#!/bin/bash


value="\n\n#New Bash Aliases\n\n"
printf "$value" |  tee -a ~/.bash_aliases >/dev/null


value="alias ll='ls -l'\n"
printf "$value" |  tee -a ~/.bash_aliases >/dev/null
value="alias lt='ls -tal'\n"
printf "$value" |  tee -a ~/.bash_aliases >/dev/null
value="alias h='history | grep '\n"
printf "$value" |  tee -a ~/.bash_aliases >/dev/null
value="alias la='ls -A'\n"
printf "$value" |  tee -a ~/.bash_aliases >/dev/null
value="alias l='ls -CF'\n"
printf "$value" |  tee -a ~/.bash_aliases >/dev/null
value="alias lsb='lsb_release -dirc'\n"
printf "$value" |  tee -a ~/.bash_aliases >/dev/null
cat ~/.bash_aliases
