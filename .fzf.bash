# Setup fzf
# ---------
if [[ ! "$PATH" == */home/tklauser/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/tklauser/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/tklauser/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/tklauser/.fzf/shell/key-bindings.bash"
