#!/bin/bash

echo "start"

d=~

curl -o ${d}/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o ${d}/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
echo "source ${d}/.git-completion.bash" >> ~/.bashrc
echo "source ${d}/.git-prompt.sh" >> ~/.bashrc
echo "PS1='\\e[0;32m\u@\h \\e[0;33m\w\\e[0;36m\$(__git_ps1)\\e[0;37m\\n\\$ '" >> ~/.bashrc

source ~/.bashrc

echo "finished"
