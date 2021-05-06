#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
export TERMINAL=termite
source ~/.bash_aliases
if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
export GOPATH=~/work
export PATH=$PATH:$GOPATH/bin
export GTK_THEME=Arc-Dark
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \W \$\[\033[00m\] '
