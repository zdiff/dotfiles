# If not running interactively, don't do anything
[[ $- != *i* ]] && return

umask 077

unset HISTFILE

export EDITOR='vim'
export VISUAL='vim'

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='$ '

