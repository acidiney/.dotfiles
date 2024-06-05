#!/bin/bash

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	sudo apt update

	echo "installing zsh and unzip"
	sudo apt install zsh unzip
	chsh -s /bin/zsh

	echo "installing ripgrep and fd"
	sudo apt-get install ripgrep fd

	sudo apt install snapd
	echo "Install Alacritty"
	sudo snap install alacritty --classic

	echo "installing nvim"
	sudo snap install nvim --classic

	echo "installing tmux"
	sudo apt install tmux

	echo "installing lazygit and bottom"

	sudo mkdir /tmp
	cd /tmp

	LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
	curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
	tar xf lazygit.tar.gz lazygit
	sudo install lazygit /usr/local/bin

	git clone https://github.com/go-nv/goenv.git ~/.goenv

	sudo snap install bottom

	cd $HOME


elif [[ "$OSTYPE" == "darwin"* ]]; then
	echo "installing brew"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	echo "installing ripgrep and fd"
	brew install ripgrep fd

	echo "installing zsh and goenv"
	brew install zsh goenv

	chsh -s /bin/zsh

	echo "installing nvim and tmux"
	brew install nvim tmux

	echo "installing alacritty"
	brew install --cask alacritty


	echo "installing lazygit and bottom"
	brew install jesseduffield/lazygit/lazygit
	brew install lazygit bottom

	cd $HOME
else
	echo "OS not supported"
fi

ln -s ~/.config/.tmux.conf ~/.tmux.conf

ln -s ~/.config/.zshrc ~/.zshrc

ln -s ~/.config/antigen/ ~/.antigen

mkdir -p ~/labs/personal/
mkdir -p ~/labs/workspace

curl -fsSL https://fnm.vercel.app/install | bash


fnm install --lts


if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	zsh | goenv install 1.22 | goenv global 1.22 
else
	goenv install 1.22
	goenv global 1.22
fi

zsh
