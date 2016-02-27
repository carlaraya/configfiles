#!/bin/bash 

#vim
ln -s .vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# git
ln -s .gitconfig ~/.gitconfig
ln -s .gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
