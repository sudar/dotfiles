##############################################################################
# These are the list of alias that I use for brew.
# Feel free to use the entire file or parts of it.
#
# Author: Sudar (https://sudarmuthu.com)
# Repo: https://github.com/sudar/dotfiles
#
##############################################################################

# Shorter alias for brew
alias b='brew'

# List only the packages installed by brew
alias bli='brew list --installed-on-request'

# List available package updates
alias bupl='brew update && brew outdated'

# Update and upgrade brew
alias bupg='brew update && brew upgrade'

# Generate the brewfile that contains all the installed packages
alias bbg='brew bundle dump --describe --force --file=~/dev/dotefiles/brew/Brewfile'

# Install the packages listed in the brewfile
alias bbi='brew bundle --file=~/dev/dotefiles/brew/Brewfile'