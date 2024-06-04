#!/bin/bash

curl -fsSL https://fnm.vercel.app/install | bash

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	sudo apt update

	echo "installing zsh"
	sudo apt install zsh
	chsh -s /bin/zsh

	sudo apt install snapd
	echo "Install Alacritty"
	sudo snap install alacritty --classic

	echo "installing nvim"
	curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
	chmod u+x nvim.appimage
	mkdir -p /opt/nvim
	mv nvim.appimage /opt/nvim/nvim
	echo "export PATH="$PATH:/opt/nvim/"" >>~/.zshrc

	echo "installing tmux"
	sudo apt install tmux

elif [[ "$OSTYPE" == "darwin"* ]]; then
	echo "installing brew"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	echo "installing zsh"
	brew install zsh

	chsh -s /bin/zsh

	echo "installing nvim and tmux"
	brew install nvim tmux

	echo "installing alacritty"
	brew install --cask alacritty
else
	echo "OS not supported"
fi

ln -s ~/.config/.tmux.conf ~/.tmux.conf

ln -s ~/.config/.zshrc ~/.zshrc

ln -s ~/.config/antigen/ ~/.antigen

mkdir -p ~/labs/personal/
mkdir -p ~/labs/workspace
