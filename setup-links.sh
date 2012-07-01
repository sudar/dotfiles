#! /bin/bash

# setups proper syslinks

# Bash files
ln -sv $PWD/bash/bashrc ~/.bashrc
ln -sv $PWD/bash/bash_profile ~/.bash_profile
ln -sv $PWD/bash/bash_aliases ~/.bash_aliases

# git files
ln -sv $PWD/git/gitconfig ~/.gitconfig

# vim files
ln -sv $PWD/vim/vimrc ~/.vimrc
ln -sv $PWD/vim/vim ~/.vim

# Install vundle
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# ignore changes to the yankring history file
git update-index --assume-unchanged vim/vim/yankring/yankring_history_v2.txt
