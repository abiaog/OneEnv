#!/bin/bash

VUNDLE_FOLDER=~/.vim/bundle/Vundle.vim
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "install ctags..."
sudo apt install exuberant-ctags

echo "install cscope..."
sudo apt install cscope

source ${CURRENT_DIR}/clone-and-install-vim.sh

# refer to https://github.com/VundleVim/Vundle.vim
if [ -d $VUNDLE_FOLDER ]; then
	echo "Vundle was installed!"
else
	echo "install Vundle Plugin..."
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

fi

source ${CURRENT_DIR}/copy-to.sh
