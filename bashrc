#
# ~/.bashrc
# vim: filetype=sh

#Load aliases if they exist
[ -r ~/.bash_aliases ] && . ~/.bash_aliases

#If not running in interactive mode, don't process the rest
[[ $- != *i* ]] && return

#Source bash completion files if they exist
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

if [[ ${EUID} == 0 ]] ; then #Root prompt
    PS1='\[\033[01;31m\][\h\[\033[01;36m\] \W\[\033[01;31m\]]\$\[\033[00m\] '
else #Default prompt
    PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '
fi

#Allow GUI applications to run as root on other users
xhost +local:root > /dev/null 2>&1

# Enable checkwinsize so that bash will check the terminal size when
# it regains control.
shopt -s checkwinsize

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

#Automatically enable virtual environments when in project root.
#Disable them otherwise.
function cd() {
    builtin cd "$@"

    #Python venv sets $VIRTUAL_ENV
    if [ -z "$VIRTUAL_ENV" ]; then
        if [ -d ./.venv ]; then
            source ./.venv/bin/activate
        fi
    else
        if [ ! -d ./.venv ]; then
            deactivate
        fi
    fi
}
