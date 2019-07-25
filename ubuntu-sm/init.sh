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
    echo $EDIT $F
}
#export RUSTC_WRAPPER=sccache

kube() {
    source <(kubectl completion bash)
}

alias kubec="KUBECONFIG=${HOME}/.kube/kconfig kubectl"
