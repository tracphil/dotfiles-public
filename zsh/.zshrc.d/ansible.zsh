###
### Ansible
###

if [ "$USER" = 'tphilli2' ]; then
    export ANSIBLE_HOME="${HOME}/ansible-control"
else
    export ANSIBLE_HOME="${MANTOSO_HOME}/projects/ansible"
    export ANSIBLE_ROLES_PATH="${ANSIBLE_HOME}/roles/public:${ANSIBLE_HOME}/roles/local"
    export ANSIBLE_COLLECTIONS_PATH="${ANSIBLE_HOME}/collections"
    export ANSIBLE_GALAXY_TOKEN=""
    alias cdal="cd ${ANSIBLE_HOME}/roles/local"
    alias cdap="cd ${ANSIBLE_HOME}/roles/public"
fi



export ANSIBLE_FORCE_COLOR="1"
export ANSIBLE_LOCALHOST_WARNING="true"
export ANSIBLE_RETRY_FILES_ENABLED="0"


alias cda="cd ${ANSIBLE_HOME}"

# export ANSIBLE_STRATEGY=mitogen_linear
# export ANSIBLE_STRATEGY_PLUGINS=~/.pyenv/versions/ansible/lib/python3.8/site-packages/ansible_mitogen/plugins/strategy

export ansible_automation_user="mtso-bot"
export ansible_automation_user_pub_key=''

#export ANSIBLE_CONFIG="${ANSIBLE_HOME}/ansible.cfg"


