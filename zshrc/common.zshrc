export ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# collect history from all of the panes
setopt inc_append_history
alias py='python3'
alias ipy='ipython'
export PYTHONBREAKPOINT=ipdb.set_trace
setopt magic_equal_subst
source ~/my_dot/nnn.zshrc

[ -f ~/my_dot/fzf/completion.zsh ] && source ~/my_dot/fzf/completion.zsh
[ -f ~/my_dot/fzf/key-bindings.zsh ] && source ~/my_dot/fzf/key-bindings.zsh
# fzf
export FZF_DEFAULT_COMMAND='fd --type f --color=never --hidden'
export FZF_DEFAULT_OPTS='--no-height --color=bg+:#343d46,gutter:-1,pointer:#ff3c3c,info:#0dbc79,hl:#0dbc79,hl+:#23d18b'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"

export FZF_ALT_C_COMMAND='fd --type d . --color=never --hidden'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"
# export FZF_DEFAULT_COMMAND='fd --type d --strip-cwd-prefix --hidden --follow --exclude .git'
bindkey "ç" fzf-cd-widget 