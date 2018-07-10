# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="$PATH:/usr/local/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/usr/local/opt/fzf/shell/key-bindings.zsh"

fzf_preview_file=$'-m --tabstop=4 --color hl:46,hl+:46,fg+:15,bg+:238,marker:208 \
    --preview \'[[ $(file --mime {}) =~ binary ]] && \
        echo {} is a binary file || \
        (echo "\\x1b[1;92m" $(file {}) "\\x1b[0m"; \
        highlight --line-numbers --line-number-length=2 --tab=4 --style anotherdark -O xterm256 -l {} || \
        head {} ) 2>/dev/null\''

_fzf_complete_vim() {
  _fzf_complete '-m' "$@" < <(
    fd --type f | sort
  )
}

export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_DEFAULT_OPTS=$fzf_preview_file
export FZF_COMPLETION_OPTS=$fzf_preview_file
export FZF_CTRL_R_OPTS='--reverse --preview "echo {}" --preview-window down:3:wrap'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_CTRL_T_OPTS=$fzf_preview_file
