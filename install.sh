#!/usr/bin/env bash


# Copy the VimIDE configuration.
cp .vimrc ~/.vimrc
cp .ycm_extra_conf.py ~/.ycm_extra_conf.py

# Install Vundle plugin.
echo "Installing Vundle ..."
rm -rf ~/.vim/bundle/Vundle.vim/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo ""

# Install VimIDE included 3 party plugins.
echo "Installing VimIDE included plugins ..."
echo "Within 5 minutes ..."
vim +PluginInstall +qall

echo "Installing YCM Clang completer ..."
echo "Need 15 to 20 minutes ..."
echo ""
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive


./install.py --clang-completer
#python3 ./install.py --clang-completer
