#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$'

export PATH="${PATH}:/home/mperin/.local/share/applications"

# exec fish
alias config='/usr/bin/git --git-dir=/home/mperin/.cfg/ --work-tree=/home/mperin'
