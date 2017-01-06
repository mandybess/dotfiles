# colors
export CLICOLOR=true

# zsh options
setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF
setopt EXTENDED_GLOB

# set the editor du jour.
export VISUAL='/usr/local/bin/vim'
export EDITOR="$VISUAL"

