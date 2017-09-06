#!/bin/bash

# install dependencies
sudo apt-get install libncurses5-dev

# download and install vim via source code begin
git clone https://github.com/vim/vim.git vim-src
cd vim-src
git pull
cd src/
make distclean
make
sudo make install

