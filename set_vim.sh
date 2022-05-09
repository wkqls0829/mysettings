#!/usr/bin/env bash
echo "Starting vim installation..."

#removing vim-tiny and installing vim
sudo apt remove -y vim-tiny
sudo apt install -y vim-nox

#install vim vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#set color 256
export TERM=xterm-256color

#install ycmd settings
sudo apt install -y build-essential cmake python3-dev
sudo apt install -y clang

#copy .vimrc
cp .vimrc ~/
vim +PluginInstall +qall
git submodule update --init --recursive

#compile vundle source
~/.vim/bundle/YouCompleteMe/install.py --clang-completer --system-libclang

#get configuration
git clone https://github.com/ycm-core/ycmd.git
cp ycmd/.ycm_extra_conf.py ~/.vim/

echo | gcc -std=c++14 -v -E -x c++ -
echo | clang -std=c++14 -stdlib=libc++ -v -E -x c++ -


#set color for zenburn
export TERM=xterm-256color
echo 'export TERM=xterm-256color' >> ~/.bashrc
