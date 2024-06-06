#!/bin/bash

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	sudo apt update
	echo "installing zsh and unzip"
	sudo apt install zsh unzip libnotify-bin tmux ripgrep fd

	sudo chsh -s /bin/zsh
	sudo apt install snapd

	echo "Install Alacritty"
	sudo snap install alacritty authy nvim --classic

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

	echo "installing deps"
	brew install jesseduffield/lazygit/lazygit
	brew install ripgrep fd zsh nvim tmux lazygit bottom goenv authy

	chsh -s /bin/zsh

	echo "installing alacritty"
	brew install --cask alacritty bitwarden

else
	echo "OS not supported"
fi

ln -s ~/.config/.tmux.conf ~/.tmux.conf

ln -s ~/.config/.zshrc ~/.zshrc

ln -s ~/.config/antigen/ ~/.antigen

ln -s ~/.config/fonts ~/.fonts

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
fi

goenv install 1.22
goenv global 1.22

zsh
