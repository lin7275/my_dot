export ZSH=~/.oh-my-zsh

# set conda path and your package
export PATH=$HOME/anaconda3/bin:$PATH:$HOME/local/bin
export PYTHONPATH=$PYTHONPATH:$HOME
export LD_LIBRARY_PATH=$HOME/local/lib:$LD_LIBRARY_PATH

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
conda config --set changeps1 False #disable virtual envir prefix (cause bug in auto-complete)
# export KALDI_ROOT=$HOME/kaldi
#. export PATH=$KALDI_ROOT/tools/openfst/bin:$KALDI_ROOT/tools/sph2pipe_v2.5:$PWD:$PATH
# [ ! -f $KALDI_ROOT/tools/config/common_path.sh ] && echo >&2 "The standard file $KALDI_ROOT/tools/config/common_path.sh is not present -> Exit!" && exit 1
# . $KALDI_ROOT/tools/config/common_path.sh


autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end
export PYTHONBREAKPOINT=ipdb.set_trace



PROMPT="%F{magenta}%n%f"  # Magenta user name
PROMPT+="@"
PROMPT+="%F{blue}${${(%):-%m}#zoltan-}%f" # Blue host name, minus zoltan
PROMPT+=" "
PROMPT+="%F{yellow}%1~ %f" # Yellow working directory

# local machine
alias sync2jumper='rsync -zarv --no-perms --prune-empty-dirs  --include="*/" --include={"*.json","*.py","*.sh","*.yaml"} -L --exclude="*" /Users/wenweilin/PycharmProjects/starman/{core,cli,research,conf} /Users/wenweilin/Documents/git/hifi-gan /Users/wenweilin/Documents/git/my_tacotron2 /Users/wenweilin/Documents/git/my_tacotron2_mini ecs:~'
alias sync2enm='rsync -zarvp --no-perms --prune-empty-dirs  --include="*/" --include={"*.json","*.py","*.pyx","*.sh","*.yaml","*.txt"} --exclude="*" /Users/wenweilin/PycharmProjects/starman/ /Users/wenweilin/PycharmProjects/my_programs /Users/wenweilin/Documents/git/huawei_diar /Users/wenweilin/PycharmProjects/diar /Users/wenweilin/Documents/git/my_tacotron2_mini /Users/wenweilin/Documents/git/glow-tts enm:~'
alias sinbox='rsync -zarvp --no-perms --prune-empty-dirs  enm:~/outbox/ /Users/wenweilin/Documents/inbox/'
export PYTHONPATH=$PYTHONPATH:$HOME/PycharmProjects/starman
export PYTHONBREAKPOINT=ipdb.set_trace
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
