#!/bin/bash

curl -fsSL https://fnm.vercel.app/install | bash

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	sudo apt update

	echo "installing zsh"
	sudo apt install zsh tmux

	chsh -s /bin/zsh

	echo "installing ripgrep and fd"
	sudo apt-get install ripgrep fd

	sudo apt install snapd
	echo "Install Alacritty"
	sudo snap install alacritty --classic

	echo "installing nvim"
	curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
	chmod u+x nvim.appimage
	mkdir -p /opt/nvim
	mv nvim.appimage /opt/nvim/nvim
	echo "export PATH="$PATH:/opt/nvim/"" >>~/.zshrc

	LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
	curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
	tar xf lazygit.tar.gz lazygit
	sudo install lazygit /usr/local/bin

elif [[ "$OSTYPE" == "darwin"* ]]; then
	echo "installing brew"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	echo "installing deps"
	brew install jesseduffield/lazygit/lazygit
	brew install ripgrep fd zsh nvim tmux lazygit bottom

	chsh -s /bin/zsh

	echo "installing alacritty"
	brew install --cask alacritty bitwarden

else
	echo "OS not supported"
fi

ln -s ~/.config/.tmux.conf ~/.tmux.conf

ln -s ~/.config/.zshrc ~/.zshrc

ln -s ~/.config/antigen/ ~/.antigen

mkdir -p ~/labs/personal/
mkdir -p ~/labs/workspace
