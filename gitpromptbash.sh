#!/bin/bash


git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
printf 'if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then \n  GIT_PROMPT_ONLY_IN_REPO=1 \n  source $HOME/.bash-git-prompt/gitprompt.sh \n fi \n' |  tee -a ~/.bashrc >/dev/null

