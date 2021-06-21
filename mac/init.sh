export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

alias gvim=/Users/sandrovicente/workspace/tools/gvim
alias vim=/usr/local/bin/vim

alias kdiff3=/Applications/kdiff3.app/Contents/MacOS/kdiff3

function xemacs() { /Users/sandrovicente/workspace/prjs/emacs/nextstep/Emacs.app/Contents/MacOS/Emacs  "$@" >/dev/null 2>&1 & }
function code() { /Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron "$@" >/dev/null 2>&1 & }

#alias gdb=lldb

export JAVA_HOME=`/usr/libexec/java_home -v 13.0.2`
export BOOST_HOME=/Users/sandrovicente/workspace/prjs/boost_1_73_0

export MAVEN_HOME=/Users/sandrovicente/workspace/tools/apache-maven-3.6.3
export PATH=$PATH:$MAVEN_HOME/bin

export ANT_HOME=/Users/sandrovicente/workspace/tools/apache-ant-1.9.14
export PATH=$PATH:$ANT_HOME/bin

export PATH="$HOME/.cargo/bin:$PATH"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]\n$ "
source ~/git-prompt.sh
export GIT_PS1_SHOWCOLORHINTS=1
setopt PROMPT_SUBST ; PS1='[%n@%m %~ $(__git_ps1 " (%s)")]\$ '

# Setting PATH for Python 3.7 (you can remove 3.6)
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

function devenv() { /Applications/Visual\ Studio.app/Contents/MacOS/VisualStudio "$@" >/dev/null 2>&1 & }
export W=$HOME/workspace

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
alias nvim=$W/tools/nvim-osx64/bin/nvim

export PATH=$PATH:$HOME/Library/Python/3.7/bin

gnvim() {
    $W/tools/VimR.app/Contents/Resources/vimr "$@" >/dev/null 2>&1 
}
