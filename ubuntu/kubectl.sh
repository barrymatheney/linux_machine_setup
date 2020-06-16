#!/bin/bash

curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl

chmod +x ./kubectl

sudo mv ./kubectl /usr/local/bin/kubectl

#https://kubernetes.io/docs/tasks/tools/install-kubectl/#install-kubectl-on-linux

#https://kubernetes.io/docs/reference/kubectl/cheatsheet/#kubectl-autocomplete


which kubectl
kubectl version --client

sudo apt-get install bash-completion

source <(kubectl completion bash) # setup autocomplete in bash into the current shell, bash-completion package should be installed first.
echo "source <(kubectl completion bash)" >> ~/.bashrc # add autocomplete permanently to your bash shell.

value="alias k=kubectl \n "
printf "$value" |  tee -a ~/.bashrc >/dev/null

value="complete -F __start_kubectl k \n "
printf "$value" |  tee -a ~/.bashrc >/dev/null





