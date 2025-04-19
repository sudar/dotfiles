What is this?
=================

This repo contains my config files for the following programs. Feel free to use entire files or snippets from them for your own use.

The following are actively maintained.

 - zsh (with [Oh My Zsh](https://ohmyz.sh/) integration)
 - git
 - composer
 - iTerm2 (Only on Mac)
 - Homebrew (Only on Mac)
 - sqlite
 - screen
 - Editline (exitrc)
 - Readline (inputrc)
 - ack (ack-grep in Ubuntu)

The following are not actively maintained any more since I am not using these tools any more.

 - vim/macvim (Replaced it with Ideavim PhpStorm extension)
 - Ideavim (PhpStorm Vim plugin)
 - bash (replaced it with zsh)
 - ctags
 - octave

Earlier I was using the above dotfiles on a Mac and a Ubuntu desktop. But these days I am mostly using it on a Mac and a Windows machine with WSL running ZSH shell.

Inspiration
----------------
The contents of this repo have been partly invented from scratch, partly inspired by open source projects, and partly refactored from snippets collected all over the internet. Many are attributed.

## Installation

Download or clone the entire source code from github and then run the following command.

`./setup-links.sh`

This command will create symbolic references in the home directory. If the config files exists already, then they are not overwritten.

Make sure you replace my name with your name in the `git/gitconfig` file.

### Importing Custom iTerm2 Profile

This repo contains a custom iTerm2 profile inside the iterm2 folder that is tweaked to my taste. Feel free to use or tweak it based on your preference.

To use the custom iTerm2 profile included in this repository, follow these steps:

1. Open iTerm2 and navigate to `Preferences` (or press `Cmd + ,`).
2. Go to the `Profiles` tab and click on the `Other Actions` dropdown at the bottom.
3. Select `Import JSON Profiles...`.
4. Browse to the `iterm2` folder in this repository and select the provided JSON profile file.
5. Once imported, you can select the profile with the name `custom` from the list and set it as default if desired.

This will apply the custom settings and appearance defined in the profile.

### Installing Oh My Zsh

To install Oh My Zsh, visit the [official installation guide](https://ohmyz.sh/) and follow the instructions provided there.

#### Including Custom Zsh Config

To include custom Zsh configurations from this repository, set the `ZSH_CUSTOM` variable in your `~/.zshrc` file to point to the custom Zsh folder in this repository. For example:

```bash
export ZSH_CUSTOM=/path/to/this/repo/zsh/custom
```

Replace `/path/to/this/repo` with the actual path to this repository on your system.

After making this change, reload your shell or run `source ~/.zshrc` to apply the new configuration.

### Installing Homebrew and Using the Brewfile

#### Installing Homebrew
Homebrew is a package manager for macOS that simplifies the installation of software. To install Homebrew, visit the [official installation guide](https://brew.sh/) and follow the instructions provided there.

#### Installing Packages from the Brewfile

This repository includes a `Brewfile` that lists the Homebrew packages I use. To install these packages as a bundle, run:

```bash
brew bundle --file path/to/this/repo/brew/Brewfile
```

Replace `path/to/this/repo` with the actual path to this repository on your system.

This command will read the `Brewfile` and install all the specified packages, casks, and taps.

If you want to update the installed packages later, you can run:

```bash
brew bundle --file path/to/this/repo/brew/Brewfile --force
```

#### Adding New Packages to the Brewfile

If you manually install a new package using Homebrew and want to add it to the `Brewfile`, you can update the file by running:

```bash
brew bundle dump --file path/to/this/repo/brew/Brewfile --force
```

This will regenerate the `Brewfile` with all currently installed packages, ensuring your changes are captured.

This ensures your system stays in sync with the `Brewfile`.

For more information about Homebrew and its features, visit the [official documentation](https://brew.sh/).

Contributions
----------------
Contributions are always welcome in the form of pull requests with explanatory comments.

License
----------------

The source code and the config files are released under "THE BEER-WARE" license.

I would, however, consider it a great courtesy if you could email me and tell me about your project and how this code was used, just for my own continued personal gratification :)
