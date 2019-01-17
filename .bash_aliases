# general aliases

# color support
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# more ls, cd aliases
alias ll='ls -hal'
alias la='ls -A'
alias lh='ls -d .*'
alias cd..='cd ..'

# pure laziness
alias q='exit'
alias r='ranger'
alias v='vim'
alias sshx='ssh -X'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gl='git log --pretty=format:"%h %s"'
alias gs='git status' # note: conflicts with ghostscript but whatever

# package management
alias autodispel='sudo apt-get autoremove'
alias cast='sudo apt-get install'
alias dispel='sudo apt-get purge'
alias dpbs="dpkg-query -Wf '\${Installed-Size}\t\${Package}\n' | sort -n"
alias gaze='apt-cache search'

# misc
alias mp4tomp3='for i in *.mp4 ; do ffmpeg -n -i "$i" "${i%.*}.mp3"; done'
alias wget4ch='wget -nd -nH -r -l 1 -H -D i.4cdn.org -A png,gif,jpg,jpeg -R "*s*"'
alias wgetpdf='wget -e robots=off -nv -r -l 1 -nH -A pdf'
alias yt-av='youtube-dl --ignore-config --extract-audio --audio-format=mp3 --format=mp4 -k'
alias yt-mp3='youtube-dl --ignore-config --extract-audio --audio-format mp3'

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
