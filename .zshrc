export ZSH=~/.oh-my-zsh

# set conda path and your package
# export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/anaconda3/bin
# export PYTHONPATH=$PYTHONPATH:$HOME/PycharmProjects/current_project
# export PATH=/home/billyhe/starman/tools:$PATH

ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# edit command using vim
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^x' edit-command-line

# collect history from all of the panes
setopt inc_append_history


function ranger {
    local IFS=$'\t\n'
    local tempfile="$(mktemp -t tmp.XXXXXX)"
    local ranger_cmd=(
        command
        ranger
        --cmd="map Q chain shell echo %d > "$tempfile"; quitall"
    )
    
    ${ranger_cmd[@]} "$@"
    if [[ -f "$tempfile" ]] && [[ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]]; then
        cd -- "$(cat "$tempfile")" || return
    fi
    command rm -f -- "$tempfile" 2>/dev/null
}
# map control+r to ranger
bindkey -s '^r' 'ranger\r'

