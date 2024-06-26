#!/bin/bash


WORKDIR=$(pwd)
echo $WORKDIR
return

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	sudo apt update
	echo "installing zsh and unzip"
	sudo apt install zsh unzip libnotify-bin tmux ripgrep fd

	sudo chsh -s /bin/zsh
	sudo apt install snapd

	echo "Install nvim"
	sudo snap install authy nvim surfshark --classic

	cd /tmp

	LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
	curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
	tar xf lazygit.tar.gz lazygit
	sudo install lazygit /usr/local/bin

	git clone https://github.com/go-nv/goenv.git ~/.goenv

	echo "Installing Wezterm"
	curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
	echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list

	sudo apt update
	sudo apt install wezterm


	sudo snap install bottom

	cd $HOME

elif [[ "$OSTYPE" == "darwin"* ]]; then
	echo "installing brew"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	echo "installing deps"
	brew install jesseduffield/lazygit/lazygit
	brew install ripgrep fd zsh nvim tmux lazygit bottom goenv authy

	chsh -s /bin/zsh

	echo "installing wezterm"
	brew install --cask wezterm bitwarden surfshark
	
	echo "Installing yabai and skhd"
	brew install koekeishiya/formulae/skhd
	brew install koekeishiya/formulae/yabai

else
	echo "OS not supported"
fi

ln -s $WORKDIR/.tmux.conf ~/.tmux.conf

ln -s $WORKDIR/.zshrc ~/.zshrc

ln -s $WORKDIR/antigen/ ~/.antigen

ln -s $WORKDIR/fonts ~/.fonts

mkdir -p ~/.config

ln -s $WORKDIR/nvim ~/.config/nvim

ln -s $WORKDIR/yabai ~/.config/yabai

ln -s $WORKDIR/skhd ~/.config/skhd

ln -s $WORKDIR/.wezterm.lua ~/.wezterm.lua

fc-cache -vf ~/.fonts

mkdir -p ~/labs/personal/
mkdir -p ~/labs/workspace

curl -fsSL https://fnm.vercel.app/install | bash

source ~/.bashrc

fnm install --lts

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	echo 'export GOENV_ROOT="$HOME/.goenv"' >>~/.bash_profile
	echo 'export PATH="$GOENV_ROOT/bin:$PATH"' >>~/.bash_profile
	echo 'eval "$(goenv init -)"' >>~/.bash_profile

	source ~/.bash_profile
else
	 yabai --start-service
	 skhd --start-service
fi

goenv install 1.22
goenv global 1.22

zsh
