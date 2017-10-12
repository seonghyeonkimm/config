# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/mac/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/mac/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/mac/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/mac/.fzf/shell/key-bindings.bash"

