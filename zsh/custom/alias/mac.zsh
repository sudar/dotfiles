##############################################################################
# macOS specific custom configuration for zsh
# Feel free to use the entire file or parts of it.
#
# Author: Sudar (https://sudarmuthu.com)
# Repo: https://github.com/sudar/dotfiles
#
##############################################################################

# Load this file only in Mac
if [[ `uname` != "Drawin" ]]; then
        return 0
fi

# Quick access to iCloud Drive
alias cdic='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/'

#------------------------------------------------------------------------------
# Time Machine commands
#------------------------------------------------------------------------------

# Display excluded time machine paths 
alias tmexl="sudo mdfind \"com_apple_backup_excludeItem = 'com.apple.backupd'\""

# Add a directory to time machine excluded paths
alias tmexa="sudo tmutil addexclusion -p"

# Remove a directory from time machine excluded paths
alias tmexr="tmutil removeexclusion"

#------------------------------------------------------------------------------
# Disk related commands
#------------------------------------------------------------------------------
# Check if fsck (file system check) is running on any disk
# Use this command when an external disk is not listed after being connected
alias diskcheck="ps -ef | grep fsck | grep -v grep"

# List all available disks
alias disks="diskutil list"

#------------------------------------------------------------------------------
# Hide/unhide files in Finder
#------------------------------------------------------------------------------

# Hide files in Finder
alias hide="chflags hidden"

# Unhide files in Finder
alias unhide="chflags nohidden"

#------------------------------------------------------------------------------
# External commands/programs
#------------------------------------------------------------------------------

# move files to trash instead of deletion. Requires rmttrash.
alias rm=rmtrash 
