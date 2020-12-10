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

# lazy git
alias gb='git branch -vv'
alias gd='git diff'
alias gl='git log --pretty=format:"%C(yellow)%h %C(green)%an%C(auto)%d %C(reset)%s %C(green)(%ar)"'
alias gs='git status'

# lazier git
alias ga='git add'
alias gc='git commit'
alias gcanoe='git commit --amend --no-edit'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gdc='gd --cached'
alias gds='gd --stat'
alias gfp='git format-patch -1'
alias gluh='gl @{u}..HEAD'
alias gsh='git show'
alias gshs='git show --stat'
alias gst='git stash'
alias gsls='git stash list --stat'

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
