blocks() {
    pcs() { for i in {0..7}; do echo -en "\e[${1}$((30+i))m \u2588\u2588 \e[0m"; done; }
    printf "\n%s\n%s\n\n" "$(pcs)" "$(pcs '1;')"
}

fsize() {
    printf "\33]50;%s\007" "xft:VL Gothic:size=$1"
}

croutonpatch() {
    sudo patch -i ~/.config/crouton/xbindkeysrc.patch /etc/crouton/xbindkeysrc.scm
    sudo patch -i ~/.config/crouton/croutontriggerd.patch /usr/local/bin/croutontriggerd
}

alias dlup="rclone -P copyto --include '{bg,images,dots}/**' $HOME/Downloads/ drive:misc"

cmu-ul() {
    local path="/media/removable/SD Card"
    rclone -P copy "$path/cmu" drive:cmu
}

cmu-dl() {
    local cmu_folder="/media/removable/SD Card/cmu"
    wgetpdf -nc --cut-dirs 1 -P "$cmu_folder/18491" http://course.ece.cmu.edu/~ece491/homework.html
    wgetpdf -nc -nd -P "$cmu_folder/18491/lectures" http://course.ece.cmu.edu/~ece491/lectures.html
    wgetpdf -nd -nc -P "$cmu_folder/DDG" http://brickisland.net/DDGSpring2019/
    printf "\nRetrieved 18-491 and DDG materials.\n\
    For 18349, 24104, and 39245, see canvas.\n\
    For 15462 see the course website.\n"
}
