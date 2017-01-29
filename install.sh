#!/bin/bash 

#vim
mv ~/.vimrc ~/back.vimrc
ln -sf $(pwd)/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +plugininstall +qall

# git
mv ~/.gitconfig ~/back.gitconfig
mv ~/.gitignore_global ~/back.gitignore_global
ln -sf $(pwd)/.gitconfig ~/.gitconfig
ln -sf $(pwd)/.gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
