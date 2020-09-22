# general aliases

# more ls, cd aliases
alias ll='ls -halF'
alias la='ls -A'
alias lh='ls -d .*'
alias cd..='cd ..'

# pure laziness
alias v='vim'
alias q='exit'
alias r='ranger'
alias ta='tmux attach'
alias gr='grep -r'
alias sshv="ssh vm -t 'tmux attach || tmux'"

# lazy git
alias gb='git branch -vv'
alias gc='git checkout'
alias gd='git diff'
alias gl='git log --pretty=format:"%C(yellow)%h %C(green)%an %C(reset)%s"'
alias gs='git status'

# from http://tldp.org/LDP/abs/html/sample-bashrc.html
extract()
{
    if [ -f $1 ] ; then
        case $1 in
            *.bz2)       bunzip2 $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
#           *.7z)        7z x $1         ;;
#           *.rar)       unrar x $1      ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

# from http://tldp.org/LDP/abs/html/sample-bashrc.html
# Creates an archive (*.tar.gz) from given directory.
mktar() { tar cvzf "${1%%/}.tgz"  "${1%%/}/"; }

# from http://tldp.org/LDP/abs/html/sample-bashrc.html
# Create a ZIP archive of a file or folder.
mkzip() { zip -r "${1%%/}.zip" "$1" ; }
