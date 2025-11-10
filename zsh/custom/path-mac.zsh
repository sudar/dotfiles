##############################################################################
# Mac specific path custom configuration for zsh
# Feel free to use the entire file or parts of it.
#
# Author: Sudar (https://sudarmuthu.com)
# Repo: https://github.com/sudar/dotfiles
#
##############################################################################

# Load this file only in Mac
if [[ `uname` != "Darwin" ]]; then
	return 0
fi

# Add Python's bin directory to PATH
# This allows you to use python, pip, etc. in addition to python3, pip3, etc.
export PATH="$PATH:$(brew --prefix python)/libexec/bin"

# Add WordPress plugin GitHub tools to PATH
# This includes commands for managing WordPress plugins in GitHub
# https://github.com/sudar/wp-plugin-in-github
export PATH="$PATH:$HOME/dev/tools/wp-plugin-in-github"

# Add WordPress maintenance scripts to PATH
# This includes various scripts for WordPress site maintenance and management
# https://github.com/sudar/scripts-for-wp-maintanence
export PATH="$PATH:$HOME/dev/tools/scripts-for-wp-maintanence"
