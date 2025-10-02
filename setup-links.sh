#! /bin/bash

############################################
# Setup proper symlinks and additional files
############################################

# wrapper for sed . `-E` is used so that it is compatible in both Mac and Ubuntu.
_sed() {
	sed -E "$1" $2 > $2.tmp && mv $2.tmp $2
}

# screen files
ln -sv $PWD/screen/screenrc ~/.screenrc

# sqlite
ln -sv $PWD/sqlite/sqliterc ~/.sqliterc

# inputrc. For programs that use readline library
# Used by programs like bash, mysql client etc for command line editing and key bindings
ln -sv $PWD/bash/inputrc ~/.inputrc

# editrc. For programs that use editline library (like sqlite3 and psql) to provide command line editing and history
ln -sv $PWD/bash/editrc ~/.editrc

# ackrc. For ack
ln -sv $PWD/ack/ackrc ~/.ackrc

# git files
ln -sv $PWD/git/gitconfig ~/.gitconfig       # You might have to adjust some paths in this file

# conda
ln -sv $PWD/conda/condarc ~/.condarc
