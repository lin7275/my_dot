export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
ZSH_THEME="robbyrussell"
export PATH=$HOME/mambaforge/bin:$PATH
export PYTHONPATH=$PYTHONPATH:$HOME
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh
alias py='python3'
alias ipy='ipython'
export PYTHONBREAKPOINT=ipdb.set_trace
alias vim=$HOME/nvim.appimage
export CORPUS=/mnt/sd2/wwlin
alias n=$HOME/nnn-static
export PATH=$PATH:/home/wwlin/.local/bin
