# general bashrc

# if non-interactive login
[ -z "$PS1" ] && return

############################################################################
# prompt
############################################################################

PS1='\[\033[01;32m\]\w\[\033[00m\] '

############################################################################
# history, completion, ETC
############################################################################

HISTCONTROL=ignoreboth
HISTSIZE=100000 HISTFILESIZE=200000
HISTIGNORE="ls:exit:q"
shopt -s histappend # append to the history file, don't overwrite it
shopt -s cmdhist # allow for easy editing of multiline commands
shopt -s checkwinsize # check the window size after each command

set -o notify

# enable programmable completion features
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
shopt -s extglob
bind "set completion-ignore-case on"

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# unix-filename-rubout
stty werase undef
bind '"\C-w": unix-filename-rubout'

############################################################################
# includes
############################################################################

[ -f ~/.bash_aliases ] && . ~/.bash_aliases
[ -f ~/.bashrc_local ] && . ~/.bashrc_local
