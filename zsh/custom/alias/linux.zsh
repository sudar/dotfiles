##############################################################################
# Linux specific custom configuration for zsh
# Feel free to use the entire file or parts of it.
#
# Author: Sudar (https://sudarmuthu.com)
# Repo: https://github.com/sudar/dotfiles
#
##############################################################################

# Load this file only in Linux (Mostly Ubuntu)
if [[ `uname` != "Linux" ]]; then
        return 0
fi

#------------------------------------------------------------------------------
# Make the output more human readable
#------------------------------------------------------------------------------

alias free="free -m"

#------------------------------------------------------------------------------
# Enhance built-in commands
#------------------------------------------------------------------------------
# Use batcat instead of cat. Need to install it via apt-get.
alias cat='batcat'

# Use prettyping instead of just ping
alias ping='prettyping --nolegend'

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
