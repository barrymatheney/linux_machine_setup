#!/bin/bash


value=" \n \n"
printf "$value" |  tee -a ~/.bashrc >/dev/null
value="export VAGRANT_DEFAULT_PROVIDER=virtualbox \n"
printf "$value" |  tee -a ~/.bashrc >/dev/null

#Append Commands
value="shopt -s histappend\n"
printf "$value" |  tee -a ~/.bashrc >/dev/null

#show date and time of history from .bash_history
value="export HISTTIMEFORMAT=’%Y%m%d %T  ‘ \n "
printf "$value" |  tee -a ~/.bashrc >/dev/null
value="export HISTFILESIZE=100000 \n "
printf "$value" |  tee -a ~/.bashrc >/dev/null
value="export HISTSIZE=100000 \n"
printf "$value" |  tee -a ~/.bashrc >/dev/null
value="PROMPT_COMMAND='history -a' \n "
printf "$value" |  tee -a ~/.bashrc >/dev/null
value="shopt -s cmdhist \n "
printf "$value" |  tee -a ~/.bashrc >/dev/null
value="shopt -s histappend \n "
printf "$value" |  tee -a ~/.bashrc >/dev/null
value="HISTCONTROL=ignorespace \n "
printf "$value" |  tee -a ~/.bashrc >/dev/null
value="alias lsb='lsb_release -dirc'"
printf "$value" |  tee -a ~/.bashrc >/dev/null
