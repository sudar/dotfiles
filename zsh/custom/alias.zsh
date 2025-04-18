##############################################################################
# This is the list of alias that I use.
# Feel free to use the entire file or parts of it.
#
# Author: Sudar (http://sudarmuthu.com)
# Repo: https://github.com/sudar/dotfiles
#
##############################################################################
# Include all .zsh files in the directory
for file in "$ZSH_CUSTOM"/alias/*.zsh; do
    # Check if the file exists (to avoid errors if no .zsh files are found)
    if [ -f "$file" ]; then
        source "$file"
    fi
done

# ls aliases

alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'

#------------------------------------------------------------------------------
# exclude .svn and .git
#------------------------------------------------------------------------------
alias grepe='grep --exclude-dir=".svn" --exclude-dir=".git"'

# exclude .svn or .git files while doing diff
alias diff="diff --exclude='.svn' --exclude='.git'"

# exclude .svn or .git files while doing zip
alias zip="zip -x '*/.git/*' -x '*/.svn/*'"

# delete .svn/* from a folder
alias delsvn='find . -name ".svn" -type d -exec rm -rf {} \;'

#------------------------------------------------------------------------------
# Make the output more human readable
#------------------------------------------------------------------------------

alias free="free -m"
alias df="df -h"
alias du="du -h"

#------------------------------------------------------------------------------
# Enhance built-in commands
#------------------------------------------------------------------------------
# Use bat instead of cat
alias cat='bat'

# Use prettyping instead of just ping
alias ping='prettyping --nolegend'

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

#------------------------------------------------------------------------------
# External commands/programs
#------------------------------------------------------------------------------
# Get the file mode of a file
alias fmod="stat -f '%A %a %N'"

# Open .md file as html
alias rah='f() { pandoc $1 | lynx --stdin }; f'