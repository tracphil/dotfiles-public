
export PML_PROJECTS="${PML_HOME}/projects"

alias pml="cd ${PML_PROJECTS}"
alias pmld="cd ${PML_PROJECTS}/devops"
alias puni="cd ${PML_PROJECTS}/aws/cfn-unified"
alias psso="cd ${PML_PROJECTS}/aws-sso/cfn-aws-sso"

if [ "$USER" = 'tphilli2' ]; then
    export ANSIBLE_INV_YAML_URL='https://bitbucket.pennmutual.com/projects/INVENTORY/repos/ansible-inventory/raw/hosts.yml'
fi
