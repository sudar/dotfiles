##############################################################################
# Custom configuration for zsh
# Feel free to use the entire file or parts of it.
#
# Author: Sudar (http://sudarmuthu.com)
# Repo: https://github.com/sudar/dotfiles
#
##############################################################################

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvi'
fi

# bind ctrl-R to search in vi-mode
bindkey "^R" history-incremental-search-backward

# Locale and language setting
# This is needed for R
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Automatically update Oh My Zsh without prompting
DISABLE_UPDATE_PROMPT=true
