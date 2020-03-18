What is this?
=================

This repo contains my config files for the following programs. Feel free to use entire files or snippets from them for your own use.

The following are actively maintained.

 - Ideavim (PhpStorm Vim plugin)
 - git
 - composer
 - screen
 - Editline (exitrc)
 - ack (ack-grep in Ubuntu)

The following are not actively maintained any more since I am not using these tools any more.

 - vim/macvim (Replaced it with Ideavim PhpStorm extension)
 - bash
 - Readline (inputrc)
 - sqlite
 - ctags
 - octave

Earlier I was using the above dotfiles on a Mac as well as a Ubuntu desktop.

These days I am using it mostly on my Mac alone running zsh shell.

Inspiration
----------------
The contents of this repo have been partly invented from scratch, partly inspired by open source projects, and partly refactored from snippets collected all over the internet. Many are attributed.

Installation
----------------

Download or clone the entire source code from github and then run the following command.

`./setup-links.sh`

This command will create symbolic references in the home directory. If the config files exists already, then they are not overwritten.

It will also download files from contrib/ folder of git source for git autocomplete and git prompt

Make sure you replace my name with your name in the `git/gitconfig` file.

Contributions
----------------
Contributions are always welcome in the form of pull requests with explanatory comments.

License
----------------

The source code and the config files are released under "THE BEER-WARE" license.

I would, however, consider it a great courtesy if you could email me and tell me about your project and how this code was used, just for my own continued personal gratification :)
