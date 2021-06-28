export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

#function gvim() { /Applications/MacVim.app/Contents/MacOS/MacVim "$@" &}
alias gvim=/Users/sandrovicente/workspace/tools/gvim

alias kdiff3=/Applications/kdiff3.app/Contents/MacOS/kdiff3

function xemacs() { /Users/sandrovicente/workspace/prj/emacs/nextstep/Emacs.app/Contents/MacOS/Emacs  "$@" >/dev/null 2>&1 & }
#function xemacs2() { /Applications/Emacs.app/Contents/MacOS/Emacs "$@" & }
function code() { /Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron "$@" >/dev/null 2>&1 & }

#alias gdb=lldb

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_92.jdk/Contents/Home
export BOOST_HOME=/Users/sandrovicente/workspace/tools/boost.1.61.0
export MAVEN_HOME=/Users/sandrovicente/workspace/tools/apache-maven-3.3.9

export PATH=$PATH:$MAVEN_HOME/bin

#export PATH="/opt/local/bin:/opt/local/sbin:$PATH"


parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]\n$ "

# Setting PATH for Python 3.7 (you can remove 3.6)
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

function devenv() { /Applications/Visual\ Studio.app/Contents/MacOS/VisualStudio "$@" >/dev/null 2>&1 & }

. "$HOME/.cargo/env"
