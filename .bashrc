# general bashrc

# if non-interactive login
[ -z "$PS1" ] && return

############################################################################
# prompt
############################################################################

if [ -f /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
    PS1='\[\033[01;32m\]\u\[\033[00m\] at \[\033[01;32m\]${debian_chroot}\[\033[00m\] in \[\033[01;34m\]\w\[\033[00m\] $ '
else
    PS1='\[\033[01;32m\]\u\[\033[00m\] at \[\033[01;32m\]\h\[\033[00m\] in \[\033[01;34m\]\w\[\033[00m\] $ '
fi

############################################################################
# history, completion, ETC
############################################################################

HISTCONTROL=ignoredups
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

############################################################################
# aliases
############################################################################

[ -f ~/.bash_aliases ] && . ~/.bash_aliases
[ -f ~/.bash_functions ] && . ~/.bash_functions

############################################################################
# machine-specific
############################################################################

[ -f ~/.bashrc_andrew ] && . ~/.bashrc_andrew
[ -f ~/.bashrc_wsl ] && . ~/.bashrc_wsl
