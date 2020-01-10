# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

function set_remote_environment() {
    export DISPLAY=$REMOTE:0.0
    #eval `ssh-agent -s`
    #ssh-add ~/.ssh/*_rsa
}

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

#REMOTE="10.100.1.239"
#echo $SSH_CONNECTION | grep $REMOTE && set_remote_environment
#echo "Display: $DISPLAY"

export PATH="$HOME/.cargo/bin:$PATH"
