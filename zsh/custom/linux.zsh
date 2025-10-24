##############################################################################
# Linux specific custom configuration for zsh
# Feel free to use the entire file or parts of it.
#
# Author: Sudar (https://sudarmuthu.com)
# Repo: https://github.com/sudar/dotfiles
#
##############################################################################

# Load this file only in Linux (Mostly Ubuntu on WSL)
if [[ `uname` != "Linux" ]]; then
        return 0
fi

# SSH agent alias
alias ssha='eval "$(ssh-agent -s)" && ssh-add'