# Setup fzf
# ---------
if [[ ! "$PATH" == */home/shimauchi/.local/share/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/shimauchi/.local/share/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/shimauchi/.local/share/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/shimauchi/.local/share/fzf/shell/key-bindings.zsh"
