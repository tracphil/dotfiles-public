alias gprn='du -hs $PWD/.git; git status; git pull; git gc --aggressive --prune=all; du -hs $PWD/.git'
alias gprna='find . -name .git -type d -execdir git gc --prune=all ";"'
alias gs='git status'
alias gpsh='du -hs $PWD/.git; git gc --aggressive --prune=all; du -hs $PWD/.git; git status; git push'
alias gcomp='du -hs $PWD/.git; git gc --aggressive --prune=all; du -hs $PWD/.git; git add .; git commit -m'
alias gclone='git clone'
alias gc='git checkout'
alias gcm='git commit -m'
alias gs='git status'
alias ga='git add --all'
alias gp='git pull --rebase'
alias gb='git branch -vv'
alias gr='git remote -v'
alias grt='git reset --hard'
alias gpub='git push origin publish'
alias grp='git rebase publish'
alias gdev='git push origin dev'
alias gd='git branch -D'
alias gm='git merge'
alias gh='git push'
alias gda='git branch | grep -v "develop" | grep -v "release" | xargs git branch -D'
alias gf='git fetch'
alias gl='git log -3'
alias gr='git remote -v'
