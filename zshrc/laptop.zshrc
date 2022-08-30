source ~/my_dot/zshrc/common.zshrc
# set conda path and your package
export PATH=$HOME/opt/anaconda3/bin:$PATH:$HOME/local/bin
export PYTHONPATH=$PYTHONPATH:$HOME
export LD_LIBRARY_PATH=$HOME/local/lib:$LD_LIBRARY_PATH


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


alias sj='rsync -zarv --no-perms --prune-empty-dirs  --include="*/" --include={"*.json","*.py","*.sh","*.yaml","Dockerfile","*.txt"} -L --exclude={"*","*.pyc"} /Users/ericlin/Documents/starman/{core,cli,research,conf,deploy,analysis} /Users/ericlin/Documents/{my_tts,new_my_tts,my_se} a100:~'


alias se='rsync -zarvp --no-perms --prune-empty-dirs  --copy-links --include="*/" --include={"*.wav","*.flac","*.json","*.py","*.pyx","*.sh","*.yaml","*.txt","*.tsv","*.yml"} --exclude="*" /Users/ericlin/Documents/starman/{core,conf,cli,toys,research} /Users/ericlin/Documents/{my_tts,new_my_tts,my_se} /Users/ericlin/Documents/diar /Users/ericlin/Documents/td_project /Users/ericlin/Documents/gitrepo/simple-autovc /Users/ericlin/Documents/gitrepo/asteroid enm:~'



alias si='rsync -zarvp --no-perms -L --prune-empty-dirs --exclude="*.tar"  --include="*/"  enm:/home12a/wwlin/syncbox/  /Users/ericlin/Documents/syncbox/'
alias sb='rsync -zarvp --no-perms --prune-empty-dirs  a100:~/syncbox/ /Users/ericlin/Documents/syncbox/'
export PYTHONPATH=$PYTHONPATH:/Users/ericlin/Documents/starman
export PYTHONBREAKPOINT=ipdb.set_trace
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'


multitb() (
    set -eu
    if [ $# -eq 0 ]; then
        printf >&2 'fatal: provide at least one logdir\n'
        return 1
    fi
    tmpdir="$(mktemp -d)"
    for arg; do
        case "${arg}" in
            /*) ln -s "${arg}" "${tmpdir}/" ;;
            *) ln -s "${PWD}/${arg}" "${tmpdir}/" ;;
        esac
    done
    exit_code=0
    \command ls -l "${tmpdir}"
    printf 'tensorboard --logdir %s\n' "${tmpdir}"
    tensorboard --logdir "${tmpdir}" || exit_code=$?
    # This really should be 'find -H "${tmpdir}" -type l -delete` to
    # account for logdirs whose names start with `.`, which should
    # behave correctly on any POSIX system, but it is much more clear
    # that the version below cannot under any circumstances delete the
    # underlying data (e.g., with non-POSIX-compliant `find`(1)).
    rm "${tmpdir}"/*
    rmdir "${tmpdir}"
    return "${exit_code}"
)
export NNN_BMS="d:$HOME/Documents;D:$HOME/Downloads/"
# eval "$(jump shell zsh)"
alias ls='gls'
export LC_CTYPE=en_US.UTF-8
alias rm="rm -v"
# eval "$(lua /Users/ericlin/z.lua --init zsh enhanced once fzf)"
###