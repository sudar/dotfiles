##############################################################################
# Git specific custom configuration for zsh
# Feel free to use the entire file or parts of it.
#
# Author: Sudar (https://sudarmuthu.com)
# Repo: https://github.com/sudar/dotfiles
#
##############################################################################

# Shorthand for git command
alias g='git'

# Delete all merged branches
alias gmbrd='git branch --merged | egrep -v "(^\*|master|main|trunk|stage|staging|preprod|pre-prod|dev)" | xargs git branch -d'

# Get the git main branch.
alias git-main="git remote show origin | grep \"HEAD branch\" | cut -d \":\" -f 2" 