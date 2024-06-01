source ~/.config/nah.sh
source ~/.config/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle trystan2k/zsh-tab-title
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle MichaelAquilina/zsh-auto-notify
# antigen bundle mafredri/zsh-async
# antigen bundle marszall87/lambda-pure

antigen theme zthxxx/jovial
antigen bundle zthxxx/jovial
antigen bundle zthxxx/zsh-history-enquirer


# Load the theme.
# antigen theme eendroroy/nothing nothing

# Tell Antigen that you're done.
antigen apply

OPENAI_API_KEY=""
export CPLUS_INCLUDE_PATH=/usr/include/c++/11:/usr/include/x86_64-linux-gnu/c++/11
export PATH="$HOME/tools/llvm-project/build/bin:$PATH"
export LD_LIBRARY_PATH="$HOME/tools/llvm-project/build/lib:$LD_LIBRARY_PATH"

fpath+=${ZDOTDIR:-~}/.zsh_functions


# bun completions
[ -s "/Users/acidiney.dias/.bun/_bun" ] && source "/Users/acidiney.dias/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# Herd injected NVM configuration
export NVM_DIR="/Users/acidiney.dias/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"

# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/acidiney.dias/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP binary.
export PATH="/Users/acidiney.dias/Library/Application Support/Herd/bin/":$PATH

export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH=$GOPATH/bin:$PATH
export PATH=$PATH:$GOROOT/bin
# alias vim=nvim
# alias vi=nvim


alias wk="cd ~/labs/workspace"
alias lps="cd ~/labs/personal"

export WARP_THEMES_DIR="$HOME/.warp/themes"
export YARN_IGNORE_NODE=1


# fnm
export PATH="/Users/acidiney.dias/Library/Application Support/fnm:$PATH"
eval "`fnm env`"

# pnpm
export PNPM_HOME="/Users/acidiney.dias/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export HOMEBREW_NO_AUTO_UPDATE=1
eval "$(goenv init -)"
