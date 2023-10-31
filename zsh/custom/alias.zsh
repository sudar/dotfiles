##############################################################################
# This is the list of alias that I use.
# Feel free to use the entire file or parts of it.
#
# Author: Sudar (http://sudarmuthu.com)
# Repo: https://github.com/sudar/dotfiles
#
##############################################################################
# ls aliases

alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'

#------------------------------------------------------------------------------
# Shorter version of frequently used commands
#------------------------------------------------------------------------------

# Github copilot cli alias
eval "$(github-copilot-cli alias -- "$0")"

alias g='git'

# Delete all merged branches
alias gmbrd='git branch --merged | egrep -v "(^\*|master|main|trunk|stage|staging|preprod|pre-prod|dev)" | xargs git branch -d'

# Get the git main branch.
alias git-main="git remote show origin | grep \"HEAD branch\" | cut -d \":\" -f 2"

alias cdid='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/'

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
# Time Machine commands
#------------------------------------------------------------------------------

# Display excluded time machine paths 
alias tmex="sudo mdfind \"com_apple_backup_excludeItem = 'com.apple.backupd'\""

# Remove a directory from time machine excluded paths
alias tmrex="tmutil removeexclusion"

#------------------------------------------------------------------------------
# External commands/programs
#------------------------------------------------------------------------------
# Open files from command line in a new tab in macvim
alias mvi="open -a MacVim.app $1"

# move files to trash instead of deletion
alias rmt=rmtrash

# Get the file mode of a file
alias fmod="stat -f '%A %a %N'"

# Open .md file as html
alias rah='f() { pandoc $1 | lynx --stdin }; f'

#------------------------------------------------------------------------------
# Docker Alias
#------------------------------------------------------------------------------

alias d='10updocker'
alias dst='10updocker start'
alias dsp='10updocker stop'
alias dspa='10updocker stop all'

alias dwp='10updocker wp'
alias dsh='10updocker shell phpfpm'
alias dlg='10updocker logs'

# Setup tests
dts() {
	pushd /Users/sudar/dev/wp-local-docker-sites/ms7-test
	docker-compose exec --user root phpfpm bash -c "yum install svn && cd /var/www/html/wp-content/plugins/bulk-delete && bash vendor/sudar/wp-plugin-test-tools/bin/install-wp-tests.sh wordpress_test root password mysql"
	popd
}

# Run tests for plugin
dt() {
	pushd /Users/sudar/dev/wp-local-docker-sites/ms7-test
	docker-compose exec --user root phpfpm bash -c "cd /var/www/html/wp-content/plugins/$1 && vendor/bin/phpunit --configuration phpunit-wp-mock.xml.dist && vendor/bin/phpunit"
	popd
}

# Run tests for addon
dta() {
	pushd /Users/sudar/dev/wp-local-docker-sites/ms7-test
	docker-compose exec --user root phpfpm bash -c "cd /var/www/html/wp-content/plugins/$1 && vendor/bin/phpunit"
	popd
}

#------------------------------------------------------------------------------
# Vagrant Alias
#------------------------------------------------------------------------------
alias va="vagrant"
alias vas="vagrant status"
alias vash="vagrant ssh"
alias vau="vagrant up"
alias vah="vagrant halt"
alias var="vagrant reload"

alias v='function __vagrant() { (cd ~/dev/vvv7 && vagrant $*); unset -f __vagrant; }; __vagrant'
alias vs='function __vagrant() { (cd ~/dev/vvv7 && vagrant status); unset -f __vagrant; }; __vagrant'
alias vsh='function __vagrant() { (cd ~/dev/vvv7 && vagrant ssh); unset -f __vagrant; }; __vagrant'
alias vu='function __vagrant() { (cd ~/dev/vvv7 && vagrant up); unset -f __vagrant; }; __vagrant'
alias vh='function __vagrant() { (cd ~/dev/vvv7 && vagrant halt); unset -f __vagrant; }; __vagrant'
alias vr='function __vagrant() { (cd ~/dev/vvv7 && vagrant reload ); unset -f __vagrant; }; __vagrant'

vt() {
	pushd ~/dev/vvv7
	vagrant ssh -c $@
	popd
}

vtxon() {
	vt xdebug_on
}

vtxof() {
	vt xdebug_off
}

vtm() {
	vt 'free -m'
}

#------------------------------------------------------------------------------
# Homestead Alias
#------------------------------------------------------------------------------
alias h='function __homestead() { (cd ~/dev/homestead && vagrant $*); unset -f __homestead; }; __homestead'
alias hs='function __homestead() { (cd ~/dev/homestead && vagrant status); unset -f __homestead; }; __homestead'
alias hsh='function __homestead() { (cd ~/dev/homestead && vagrant ssh); unset -f __homestead; }; __homestead'
alias hu='function __homestead() { (cd ~/dev/homestead && vagrant up); unset -f __homestead; }; __homestead'
alias hh='function __homestead() { (cd ~/dev/homestead && vagrant halt); unset -f __homestead; }; __homestead'
alias hr='function __homestead() { (cd ~/dev/homestead && vagrant reload); unset -f __homestead; }; __homestead'
