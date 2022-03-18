fpath=(~/.config/zsh/completion-scripts ~/.config/zsh/functions $fpath)
autoload -U compinit && compinit
autoload -U bashcompinit && bashcompinit

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# Colorful lists of possible autocompletions for `ls`
# zstyle doesn't understand the BSD-style $LSCOLORS at all, so use Linux-style
# $LS_COLORS
zstyle ':completion:*:ls:*:*' list-colors "$LS_COLORS"

# fastlane completion
#. ~/.fastlane/completions/completion.sh
