autoload -U compinit && compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' insert-tab pending

# by itself: run `git status`
# with arguments: acts like `git`
function g {
  if [[ $# > 0 ]]; then
    git $@
  else
    git st
  fi
}
#
# complete `g` like `git`, etc
compdef g=git

# tab completion for `delete_branch` command
_git_delete_branch() {
  __gitcomp "$(__git_heads)"
}
