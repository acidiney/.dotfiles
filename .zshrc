
source ~/.dotfiles/nah.sh
source ~/.dotfiles/antigen/antigen.zsh
source ~/.dotfiles/async.zsh


# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# fnm
 
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  FNM_PATH="$HOME/.local/share/fnm"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  FNM_PATH="$HOME/Library/Application Support/fnm"
fi

eval "$(fnm env)"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

eval "$(fnm env --use-on-cd)"

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle MichaelAquilina/zsh-auto-notify

## antigen theme zthxxx/jovial
## antigen bundle zthxxx/jovial
## antigen bundle zthxxx/zsh-history-enquirer

antigen bundle subnixr/minimal

# Tell Antigen that you're done.
antigen apply

alias vim=nvim
# alias vi=nvim


alias wk="cd ~/labs/workspace"
alias lps="cd ~/labs/personal"

export HOMEBREW_NO_AUTO_UPDATE=1
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
