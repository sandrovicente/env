export EDIT=vim
export VIEW=less

v() {
    F=`fzf`
    $VIEW $F
    echo $VIEW $F
}

e() {
    F=`fzf`
    $EDIT $F
    echo $VIEW $F
}

