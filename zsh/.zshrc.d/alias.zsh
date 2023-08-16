# -*- mode: zsh -*-

WHOAMI=$(whoami)

alias ssh="ssh -A"
# alias awsinfo="awsinfo.py"

# what is my ip?
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'

# Directory aliases
alias cdg="cd ${PROJECTS_HOME}/${WHOAMI}/projects"
alias cdot="cd ${PROJECTS_HOME}/${WHOAMI}/projects/dotfiles-private"
alias cdp="cd ${PROJECTS_HOME}"
alias icloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
#alias pinentry='pinentry-mac'

alias vi="vim"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='colordiff'

alias cdm="cd ${MANTOSO_HOME}/projects"
alias cdc="cd ${MANTOSO_HOME}/projects/container/"
alias cdp="cd ${MANTOSO_HOME}/projects/pipeline/"
alias cds="cd ${MANTOSO_HOME}/projects/shipyard/"
alias cdt="cd ${MANTOSO_HOME}/projects/template/"

alias mtso="cd ${MTSO_HOME}/projects"


###
### Terraform
###
if [ "$USER" = 'tphillips' ]; then
    export TERRAFORM_HOME="${MNTV_HOME}/projects/terraform"
else
    export TERRAFORM_HOME="${PROJECTS_HOME}/mantoso/projects/terraform"
fi

alias cdtm="cd ${TERRAFORM_HOME}/"

if (( $+commands[terraform] )); then
    alias tfa="terraform apply"
    alias tfi="terraform init"
    alias tfg="terraform get"
    alias tfp="terraform plan"
    alias tfo="terraform output"
fi
