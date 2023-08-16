
if [ -f $HOME/.config/sops/age/keys.txt ]; then
    export SOPS_AGE_KEY_FILE="$HOME/.config/sops/age/keys.txt"
fi

export SOPS_KMS_ARN=""
