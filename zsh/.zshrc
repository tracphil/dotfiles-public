# "$HOME"/.zshrc

# load all files from .zshrc.d directory
if [[ -d ${HOME}/.zshrc.d ]]; then
  for file in "${HOME}"/.zshrc.d/*.zsh; do
    source "$file"
  done
fi

# load all files from .zshrc.private.d directory
if [[ -d ${HOME}/.zshrc.private.d ]]; then
  source ${HOME}/.zshrc.private.d/vpc-dev.zsh
  for file in "${HOME}"/.zshrc.private.d/*.zsh; do
    source "$file"
  done
fi

# load all files from .shell/rc.d directory
if [[ -d ${HOME}/.rc.d ]]; then
  for file in "${HOME}"/.rc.d/*.sh; do
    source "$file"
  done
fi

## Load antidote
# source antidote
if [ -f ${ZDOTDIR:-~}/.antidote/antidote.zsh ]; then
    source ${ZDOTDIR:-~}/.antidote/antidote.zsh
else
    source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
fi
# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

# Load secure variables or "things" such as aliases
if [[ -f ${HOME}/.private.zsh ]]; then
    source "${HOME}"/.private.zsh
fi

# Completion needs to be here...
fpath+=(~/.config/hcloud/completion/zsh)
# autoload -U +X bashcompinit && bashcompinit
# autoload -Uz compinit && compinit



eval "$(op completion zsh)"; compdef _op op

if [[ -f /usr/local/etc/bash_completion.d/az ]]; then
    source /usr/local/etc/bash_completion.d/az
fi

# Note: there is pyenv configuration in ~/.zshrc.d/pyenv.zsh also
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

if [[ -f /opt/homebrew/bin/terraform ]]; then
    complete -o nospace -C /opt/homebrew/bin/terraform terraform
fi

# Prevent expanding aliases before performing completions
setopt completealiases
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tracphil/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall



# history setup
setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST
