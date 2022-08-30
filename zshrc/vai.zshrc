alias nnn="~/nnn-static"
source ~/my_dot/zshrc/common.zshrc


# set conda path and your package
export PATH=$HOME/anaconda3/bin:$PATH
export PATH="$HOME/local/bin:$PATH"
export PYTHONPATH=$PYTHONPATH:$HOME
#export LD_LIBRARY_PATH="$HOME/local/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/home/wwlin/anaconda3/lib:$HOME/local/lib:$LD_LIBRARY_PATH"
# ZSH_THEME="robbyrussell"

# plugins=(
#   git
#   zsh-autosuggestions
#   zsh-syntax-highlighting
# # zsh-fzf-history-search
# )
# source $ZSH/oh-my-zsh.sh

# edit command using vim
# autoload -U edit-command-line
# zle -N edit-command-line
# bindkey '^x^x' edit-command-line

# collect history from all of the panes
# setopt inc_append_history


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
# export PYTHONBREAKPOINT=ipdb.set_trace

alias sj='rsync -zarv --no-perms --prune-empty-dirs  --include="*/" --include={"Dockerfile","*.json","*.py","*.sh","*.yaml"} --exclude="*" a100:~/{analysis,deploy,conf,core,cli,pba,cfg,research,hifi-gan,my_tacotron2_mini,my_tacotron2_mini_refactor,my_tts,new_my_tts,my_se} ~/'
alias sb='rsync -zarvp --no-perms --prune-empty-dirs --exclude="*.tar"  ~/new_my_tts/projects ~/syncbox/ a100:~/syncbox/' 
export CORPUS='/ssd2/wwlin'
export PATH=$HOME/anaconda3/bin:$PATH:$HOME/local/bin
export PYTHONPATH=$PYTHONPATH:$HOME
export LD_LIBRARY_PATH=$HOME/local/lib:$LD_LIBRARY_PATH

#PROMPT+="%F{blue}${${(%):-%m}#zoltan-}%f" # Blue host name, minus zoltan
#PROMPT+=" "
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "
alias rm=/bin/rm

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/wwlin/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/wwlin/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/wwlin/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/wwlin/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
#source activate cuda102
# setopt magic_equal_subst
export KALDI_ROOT=$HOME/kaldi
export PATH=$KALDI_ROOT/tools/openfst/bin:$KALDI_ROOT/tools/sph2pipe_v2.5:$PWD:$PATH
. $KALDI_ROOT/tools/config/common_path.sh

export LANG=en_HK.UTF-8
export LANGUAGE=en_HK:en
export LC_CTYPE="en_HK.UTF-8"
export LC_NUMERIC="en_HK.UTF-8"
export LC_TIME="en_HK.UTF-8"
export LC_COLLATE="en_HK.UTF-8"
export LC_MONETARY="en_HK.UTF-8"
export LC_MESSAGES="en_HK.UTF-8"
export LC_PAPER="en_HK.UTF-8"
export LC_NAME="en_HK.UTF-8"
export LC_ADDRESS="en_HK.UTF-8"
export LC_TELEPHONE="en_HK.UTF-8"
export LC_MEASUREMENT="en_HK.UTF-8"
export LC_IDENTIFICATION="en_HK.UTF-8"
export LC_ALL=
export LANG='zh_CN.UTF-8' LANGUAGE='zh_CN:zh' LC_ALL='zh_CN.UTF-8'
# source ~/nnn.zshrc
alias tmux=/home/wwlin/anaconda3new_2022_0812/bin/tmux
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
conda activate cuda102
# [[ -s /home/wwlin/.autojump/etc/profile.d/autojump.sh ]] && source /home/wwlin/.autojump/etc/profile.d/autojump.sh
eval "$(zoxide init zsh)"