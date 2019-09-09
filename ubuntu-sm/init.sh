export S=$HOME/workspace/s

#export REPO_S=$S/smarkets
#alias k8s='source $REPO_S/tools/dev/setup/activate.sh'

export REPO_H=$S/hanson
export PATH=$PATH:$REPO_H/crane

#alias hshell='docker run --rm -it -v $REPO_H:/var/lib/hanson -v $HOME/workspace:/var/workspace -v $REPO_H/local/hanson_cfg:/etc/hanson_cfg -v $REPO_H/local/hanson_archive:/var/log/hanson_archive -v $REPO_H/local/hanson_state:/var/hanson_state hanson bash'

#export HANSON_IMAGE=$(docker images --format "{{.ID}}"  | head -1 )
export HANSON_IMAGE=hanson
alias hshell='docker run --rm -it -v $HOME/workspace:/var/workspace -v $S/hanson/local/work:/var/lib/work -v $S/hanson/local/hanson_cfg:/etc/hanson_cfg:ro -v $S/hanson/local/hanson_archive:/var/log/hanson -v $S/hanson/local/hanson_state:/var/hanson_state -v $S/hanson:/var/lib/hanson -v $S/hanson/local/.bashrc:/root/.bashrc:ro -v $HOME/.bash_history:/root/.bash_history -v $HOME/.vimrc:/root/.vimrc:ro -v $HOME/.vim:/root/.vim:ro -e TERM=xterm-256color -e REAL_LOCALHOST=10.100.1.82 -e DRY_REST_PORT=20004 -e HANSON_ENV=dev -e ENABLE_CONSOLE_LOGGING=True -e LINES=$(tput lines) -e REST_PORT=20002 -e COLUMNS=$(tput cols) -e SHARD_KEY=shard_1 --log-driver=syslog --log-opt syslog-address=udp://localhost:514 --log-opt syslog-format=rfc5424micro --log-opt tag={{.Name}}/dev -ti $HANSON_IMAGE /bin/bash'

export PYTHONPATH=$S/smarkets/tools/dev
export PATH=$PATH:/home/sandroav/.local/bin

xemacs() { emacs "$@" 2>/dev/null & }

source <(kubectl completion bash)

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export PATH=$PATH:$HOME/bin

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

kube_bash() {
    source <(kubectl completion bash)
}

alias kubec="KUBECONFIG=${HOME}/.kube/kconfig kubectl"

k() {
    KUBECONFIG=${HOME}/.kube/kconfig eval $@
}


export RUST_CODE_PATH=$S/hanson/rust
