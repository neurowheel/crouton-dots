# general aliases

# more ls, cd aliases
alias ll='ls -hal'
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

# misc
alias wget4ch='wget -nd -nH -r -l 1 -H -D is2.4chan.org -A png,gif,jpg,jpeg'
alias wgetpdf='wget -e robots=off -nv -r -l 1 -nH -A pdf'
alias yt-mp3='youtube-dl --ignore-config --extract-audio --audio-format mp3'

# temporary
alias p4='ssh -Y -t jagu@unix6.andrew.cmu.edu "cd ~/private/p4; tmux attach -d || tmux"'
function pdf-dl() {
    local cmu_folder="$HOME/cmu"
    wgetpdf -nc -nd -P "$cmu_folder/15410-f19/lectures" https://www.cs.cmu.edu/~410/lecture.html
}

# rclone aliases
alias dsremove="find . -name '.DS_Store' -type f -delete"
alias rclone="rclone -P"
alias dlup="rclone copyto --include '{bg,images,dots}/**' $HOME/Downloads/ drive:misc"
alias dldn="rclone copyto --include '{bg,images,dots}/**' drive:misc $HOME/Downloads/"
alias cmu-copyup="rclone copy $HOME/cmu drive:cmu"
alias cmu-syncup="rclone sync $HOME/cmu drive:cmu"
