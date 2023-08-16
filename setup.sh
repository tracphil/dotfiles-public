#!/bin/bash

#if ! command -v brew &> /dev/null
#    then
#        echo "brew is required for these dotfiles"
#     exit
#fi

if ! command -v stow &> /dev/null
    then
        echo "stow is required for these dotfiles"
     exit
fi

rm -rf ~/.ssh
rm -rf ~/.bash*
rm -rf ~/.z*

rm -rf ~/.config/fish

ls -al ~/ | grep private | for i in $(awk '{print $9}'); do rm -rf ~/${i}; done
ls -al ~/ | grep dotfiles | for i in $(awk '{print $9}'); do rm -rf ~/${i}; done

# Put .stowrc in place first
stow -R -t "$HOME" stow

# Now stow all directories
stow -R -t "$HOME" */

chmod 700 ssh/.ssh
chmod 600 ssh/.ssh/id_*
chmod 600 ssh/.ssh/config

mkdir -p ~/.go/bin

#mkdir -p ~/Library/Mobile\ Documents/com~apple~CloudDocs/github-archive
#ln -s ~/Library/Mobile\ Documents/com~apple~CloudDocs/github-archive ~/github-archive
