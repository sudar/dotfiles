#! /bin/bash

############################################
# Setup additional steps for mac
############################################

# Enable key repeating for VS Code Vim extension
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false 

# Enable key repeating for Cursor Vim extension
# See https://forum.cursor.com/t/key-down-repeat-with-vim-extension/1581/7
defaults write "$(osascript -e 'id of app "Cursor"')" ApplePressAndHoldEnabled -bool false
