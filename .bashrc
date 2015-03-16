#! /bin/bash

alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -A'
alias copier='xclip -selection clipboard'
alias cleandocker="docker ps -a | cut -d ' ' -f 1 | sed -n '2,\$p' | xargs docker rm"
alias ding='aplay /usr/share/sounds/speech-dispatcher/test.wav > /dev/null 2>&1'
export EDITOR=vim
