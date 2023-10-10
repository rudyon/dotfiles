#!/bin/bash
export PS1="\[\033[32m\]\u\[\033[36m\]@\[\033[33m\]\h \[\033[37m\]\W \[\033[31m\]-> \[\033[37m\]"
set -o vi
alias ls="ls --color -p"
alias vi="nvim"
alias vim="nvim"
export GOPATH=/home/rudyon/.go
export EDITOR=/usr/bin/nvim
alias icat="kitty +kitten icat"
alias gen="cd ~/devl/gen ; python gen.py"
alias memx="nvim ~/memx/"
alias log="echo \- $(date --iso-8601) "$1" >> ~/memx/musings.md"
