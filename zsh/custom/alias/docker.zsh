##############################################################################
# This is the list of docker alias that I use.
# Feel free to use the entire file or parts of it.
#
# Author: Sudar (https://sudarmuthu.com)
# Repo: https://github.com/sudar/dotfiles
#
##############################################################################
alias d='docker'
alias dc='docker container'
alias di='docker image'

# List all images and container size
alias dtable="docker system df --format 'table {{.Type}}\t{{.TotalCount}}\t{{.Size}}'"

#------------------------------------------------------------------------------
# 10up Docker Alias
#------------------------------------------------------------------------------
alias d10='10updocker'
alias dst='10updocker start'
alias dsp='10updocker stop'
alias dspa='10updocker stop all'

alias dwp='10updocker wp'
alias dsh='10updocker shell phpfpm'
alias dlg='10updocker logs'