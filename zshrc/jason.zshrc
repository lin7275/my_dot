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
eval "$(zoxide init zsh)"
n ()
{
    # Block nesting of nnn in subshells
    if [[ "${NNNLVL:-0}" -ge 1 ]]; then
        echo "nnn is already running"
        return
    fi

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
    # see. To cd on quit only on ^G, remove the "export" and make sure not to
    # use a custom path, i.e. set NNN_TMPFILE *exactly* as follows:
    #     NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    # The backslash allows one to alias n to nnn if desired without making an
    # infinitely recursive alias
    nnn "$@" -A -T t -x

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}
export sel=${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.selection
export NNN_PLUG="c:fzcd;j:z;p:preview-tui;s:sel2xsel;"
export NNN_FIFO="/tmp/nnn.fifo"
export TERMINAL=tmux
