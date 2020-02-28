export ZSH=~/.oh-my-zsh

# set conda path and your package
# export PATH=$HOME/anaconda3/bin:$PATH
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
# autoload -U edit-command-line
# zle -N edit-command-line
# bindkey '^x^x' edit-command-line

# collect history from all of the panes
setopt inc_append_history


alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias r='ranger'
alias py='python3'
alias ipy='ipython'

