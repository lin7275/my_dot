source ~/my_dot/zshrc/common.zshrc

# set conda path and your package
export PATH=/home12a/wwlin/etc/anaconda3/bin:$PATH:/home12a/wwlin/ffmpeg/bin:$HOME/cli
export PATH=/home12a/wwlin/anaconda3/bin:$PATH:/home12a/wwlin/ffmpeg/bin:$HOME/cli:$HOME/local/bin
export PYTHONPATH=$PYTHONPATH:$HOME
export PATH=$HOME/mambaforge/bin:$PATH

# edit command using vim
# autoload -U edit-command-line
# zle -N edit-command-line
# bindkey '^x^x' edit-command-line

alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias r='ranger'
# map control+r to ranger
alias nvim='/home12a/wwlin/nvim.appimage'
export VIRTUAL_ENV=$CONDA_PREFIX


unset __conda_setup
# <<< conda initialize <<<
alias vim='nvim'
alias py='python3'
alias ipy='ipython'
alias pip='pip3'
# PROMPT="$fg[cyan]%}$USER@%{$fg[blue]%}%m ${PROMPT}"
export LC_CTYPE=en_US.UTF-8
export KALDI_ROOT=/usr/local/kaldi
export PATH=$PWD/utils/:$KALDI_ROOT/tools/openfst/bin:$KALDI_ROOT/tools/sph2pipe_v2.5:$PWD:$PATH:$HOME/local
[ ! -f $KALDI_ROOT/tools/config/common_path.sh ] && echo >&2 "The standard file $KALDI_ROOT/tools/config/common_path.sh is not present -> Exit!" && exit 1
. $KALDI_ROOT/tools/config/common_path.sh
# export PROMPT="%F{magenta}%n%f@%F{blue}${${(%):-%m}#zoltan-}%f %F{yellow}%1~ %F{white}"

case $(hostname -f | cut -d. -f1) in 
	enmcomp8) export CORPUS="/home8a/wwlin/corpus/";;
	enmcomp6) export CORPUS="/home12a/wwlin/corpus/";;
	enmcomp10) export CORPUS="/home10b/wwlin/corpus/";;
	enmcomp7) export CORPUS="/home7b/wwlin/corpus/";;
	enmcomp9) export CORPUS="/home9a/wwlin/corpus"
			  conda activate myenv;;
esac
autoload compinit &&compinit
autoload -Uz bashcompinit && bashcompinit

