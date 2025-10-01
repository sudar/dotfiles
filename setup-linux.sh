#! /bin/bash

############################################
# Setup additional steps for Ubuntu / WSL
############################################

echo 'Installing missing packages'

# Install diff-so-fancy which is used in gitconfig for diff
sudo add-apt-repository ppa:aos1/diff-so-fancy
sudo apt update
sudo apt install diff-so-fancy

# Install `bat` which is a replacement for `cat` command.
sudo apt install bat

# Generate locale files.
echo ''
echo ''

echo 'Follow these setps to generate en_US UTF locale files'
echo 'Edit the `/etc/locale.gen` file and uncomment the line `en_US.UTF-8 UTF-8`'
echo 'Now run the command `sudo locale-gen`'
