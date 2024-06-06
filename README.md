# My dotfiles

![./term_01](./term_01.png)
![./term_02](./term_02.png)

## FONT

Please install `FiraCode Nerd Font` in your system

## SO

- Linux (apt)
- MacOS (brew)


## CONFIG

It will install

- Alacritty
- Nvim
- Tmux
- brew (MacOnly)
- snap (Linux)
- zsh
- antigen
- oh-my-zsh
- ripgrep, fd, lazygit, bottom
- fnm ( with node latest )
- goenv ( go 1.22 )

## INSTALL

```bash

# Ensure to backups
mv .config .config.bak
mv .zshrc .zshrc.bak
mv .bash_profile .bash_profile.bak

# Clone repo as .config

$ git clone https://github.com/acidiney/dotfiles.git .config

$ cd .config

# Install script

$ bash install.sh

```
