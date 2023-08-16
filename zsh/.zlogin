# load all files from .shell/login.d directory
if [[ -d $HOME/.login.d ]]; then
  for file in "$HOME"/.login.d/*.sh; do
    source "$file"
  done
fi