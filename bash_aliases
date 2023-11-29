#~/.bash_aliases
# vim: filetype=sh
alias open='xdg-open > /dev/null 2>&1' # For launching GUI apps
alias info='info --vi-keys'
alias tmux='tmux -2'
alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias sag='eval $(ssh-agent)'
alias sad='eval $(ssh-agent); ssh-add'
alias reset='tput init'
