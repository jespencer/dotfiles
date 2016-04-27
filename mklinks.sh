#!/bin/bash
############################
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

#ln -s ~/dotfiles/$file ~/.config/.$file


ln -fs ~/dotfiles/bashrc ~/.bashrc
ln -fs ~/dotfiles/screenrc ~/.screenrc
ln -fs ~/dotfiles/i3 ~/.config/i3/config
ln -fs ~/dotfiles/tmux.conf ~/.tmux.conf
ln -fs ~/dotfiles/conkyrc ~/.conkyrc
ln -fs ~/dotfiles/Xresources ~/.Xresources
