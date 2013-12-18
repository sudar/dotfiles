#! /bin/bash

############################################
# Setup proper symlinks and additional files
############################################

# wrapper for sed . `-E` is used so that it is compatible in both Mac and Ubuntu.
_sed() {
	sed -E "$1" $2 > $2.tmp && mv $2.tmp $2
}

_sed "/^additional_files=/s#\"[^\"]*\"#\"$PWD\"#g" $PWD/bash/bashrc

# Bash files
ln -sv $PWD/bash/bashrc ~/.bashrc
ln -sv $PWD/bash/bash_profile ~/.bash_profile

if [ "$TERM_PROGRAM" == "Apple_Terminal" ]; then
    ln -sv $PWD/bash/profile ~/.profile
fi

# screen files
ln -sv $PWD/screen/screenrc ~/.screenrc

# Octave startup file
ln -sv $PWD/octave/octaverc ~/.octaverc

# git files
ln -sv $PWD/git/gitconfig ~/.gitconfig       # You might have to adjust some paths in this file

# install and setup scripts from git contrib
source get-git-contrib.sh

# vim files
ln -sv $PWD/vim/vimrc ~/.vimrc
ln -sv $PWD/vim/vim ~/.vim
ln -sv $PWD/specific/vimpressrc ~/.vimpressrc # put all your private stuff in a /specific folder

# Install vundle
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# ignore changes to the yankring history file
git update-index --assume-unchanged vim/vim/yankring/yankring_history_v2.txt
