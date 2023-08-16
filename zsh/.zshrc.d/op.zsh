export OP_ACCOUNT=""

eval "$(op completion zsh)"; compdef _op op

if [ -f $HOME/.config/op/plugins.sh ]; then
    source $HOME/.config/op/plugins.sh
fi
