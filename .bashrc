# If not running interactively, don't do anything
[[ $- != *i* ]] && return

_set_user_PS1() {
    PS1='> '
}
_set_user_PS1
unset -f _set_user_PS1

alias ls='ls --color=auto'
alias lsa='ls -lav --ignore=..'   # show long listing of all except ".."
alias lsah='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."

[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion