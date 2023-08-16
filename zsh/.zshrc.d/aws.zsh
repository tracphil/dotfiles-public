export AWS_PAGER=""

if [ "$USER" = 'tracphil' ]; then
    # export AWS_PROFILE="tracphil"
else
    # export AWS_PROFILE=""
fi

# export SHOW_AWS_PROMPT=false

function aws-switch() {
    case ${1} in
        |clear)
            export AWS_PROFILE=""
            ;;
        *)
            export AWS_PROFILE="${1}"
            ;;
    esac
}
