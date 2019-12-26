#!/bin/bash 
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install ncurses-dev libncurses5-dev libncursesw5-dev git

git clone https://github.com/vim/vim.git
cd vim/src
sudo make install
cd ../..


#vim
mv ~/.vimrc ~/back.vimrc
ln -sf $(pwd)/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +plugininstall +qall
mkdir ~/.tmp

# git
mv ~/.gitconfig ~/back.gitconfig
mv ~/.gitignore_global ~/back.gitignore_global
ln -sf $(pwd)/.gitconfig ~/.gitconfig
ln -sf $(pwd)/.gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# stuff (only works on linux mint i think)
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"

chmod +x $(pwd)/*.sh
