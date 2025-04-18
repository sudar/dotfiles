##############################################################################
# macOS specific custom configuration for zsh
# Feel free to use the entire file or parts of it.
#
# Author: Sudar (https://sudarmuthu.com)
# Repo: https://github.com/sudar/dotfiles
#
##############################################################################

# Quick access to iCloud Drive
alias cdic='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/'

#------------------------------------------------------------------------------
# Time Machine commands
#------------------------------------------------------------------------------

# Display excluded time machine paths 
alias tmex="sudo mdfind \"com_apple_backup_excludeItem = 'com.apple.backupd'\""

# Remove a directory from time machine excluded paths
alias tmrex="tmutil removeexclusion"

#------------------------------------------------------------------------------
# External commands/programs
#------------------------------------------------------------------------------

# move files to trash instead of deletion. Requires rmttrash.
alias rmt=rmtrash 