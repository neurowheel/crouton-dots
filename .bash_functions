blocks() {
    pcs() { for i in {0..7}; do echo -en "\e[${1}$((30+i))m \u2588\u2588 \e[0m"; done; }
    printf "\n%s\n%s\n\n" "$(pcs)" "$(pcs '1;')"
}

alias fsize="printf '\33]50;%s\007' 'xft:VL Gothic:pixelsize=$1'"

croutonpatch() {
    sudo patch -i ~/.config/crouton/xbindkeysrc.patch /etc/crouton/xbindkeysrc.scm
    sudo patch -i ~/.config/crouton/croutontriggerd.patch /usr/local/bin/croutontriggerd
}
