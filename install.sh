#!/bin/bash 
sudo apt-get install vim-gtk git

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

# stuff
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"

chmod +x $(pwd)/*.sh
# firefox lock
ln -sf $(pwd)/OpenFox.sh ~/OpenFox.sh
ln -sf $(pwd)/ReallyOpenFox.sh ~/ReallyOpenFox.sh
cp $(pwd)/Fox.desktop ~/Desktop
