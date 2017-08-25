#!/bin/bash

VUNDLE_FOLDER=~/.vim/bundle/Vundle.vim

# refer to https://github.com/VundleVim/Vundle.vim
if [ -d $VUNDLE_FOLDER ]; then
	echo "Vundle was installed!"
else
	echo "install Vundle Plugin..."
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

fi

echo "install ctags..."

sudo apt install exuberant-ctags


echo "install cscope..."

sudo apt install cscope


# source ./cope-to.sh
