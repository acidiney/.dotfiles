source ~/.config/nah.sh
source ~/.config/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# fnm
FNM_PATH="~/Library/Application Support/fnm"
eval "$(fnm env)"

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
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

alias vim=nvim
# alias vi=nvim


alias wk="cd ~/labs/workspace"
alias lps="cd ~/labs/personal"

export HOMEBREW_NO_AUTO_UPDATE=1
eval "$(goenv init -)"


