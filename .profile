# crouton-specific .profile

# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

source ~/.bashrc

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

set ignoreeof

export EDITOR="/usr/bin/vim"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export CLICOLOR=1
