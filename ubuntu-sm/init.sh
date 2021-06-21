export W=$HOME/work
export T=$HOME/tools
export TMP=$HOME/tmp

#export REPO_S=$S/smarkets
#alias k8s='source $REPO_S/tools/dev/setup/activate.sh'

#alias hshell='docker run --rm -it -v $REPO_H:/var/lib/hanson -v $HOME/workspace:/var/workspace -v $REPO_H/local/hanson_cfg:/etc/hanson_cfg -v $REPO_H/local/hanson_archive:/var/log/hanson_archive -v $REPO_H/local/hanson_state:/var/hanson_state hanson bash'

#export PYTHONPATH=$S/smarkets/tools/dev

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] \D{%FT%T}\n$ "

export PATH=$PATH:/home/sandrov/.local/bin

source <(kubectl completion bash)

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export PATH=$PATH:$HOME/local/bin

export EDIT=nvim
export VIEW=less

gnvim () { nvim-qt "$@" 2>/dev/null & }

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
#
kube_bash() {
    source <(kubectl completion bash)
}

#alias kubec="KUBECONFIG=${HOME}/.kube/kconfig kubectl"
#
#k() {
#    KUBECONFIG=${HOME}/.kube/kconfig eval $@
#}

# JDK
export JAVA_HOME=$HOME/.jdks/corretto-11.0.11
export PATH=$PATH:$JAVA_HOME/bin

export KOTLIN_HOME=$HOME/tools/kotlin-native-prebuilt-linux-1.4.21
export PATH=$PATH:$KOTLIN_HOME/bin

export GO_HOME=$HOME/tools/go
export PATH=$PATH:$GO_HOME/bin
export PATH=$PATH:$HOME/go/bin

export PATH=$PATH:$T/gradle-7.0.2/bin

export EDITOR=nvim

### BOTTOM
shopt -s direxpand
source $HOME/.kf.sh
