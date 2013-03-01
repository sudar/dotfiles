#! /bin/bash

# setups proper syslinks

# Bash files
ln -sv $PWD/bash/bashrc ~/.bashrc
ln -sv $PWD/bash/bash_profile ~/.bash_profile
ln -sv $PWD/bash/bash_aliases ~/.bash_aliases
ln -sv $PWD/bash/bash_gitprompt ~/.bash_gitprompt

# git files
ln -sv $PWD/git/gitconfig ~/.gitconfig
ln -sv $PWD/git/gitignore ~/.gitignore

# vim files
ln -sv $PWD/vim/vimrc ~/.vimrc
ln -sv $PWD/vim/vim ~/.vim
ln -sv $PWD/vim/vimpressrc ~/.vimpressrc

# screen files
ln -sv $PWD/screen/screenrc ~/.screenrc

# Install vundle
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# ignore changes to the yankring history file
git update-index --assume-unchanged vim/vim/yankring/yankring_history_v2.txt
