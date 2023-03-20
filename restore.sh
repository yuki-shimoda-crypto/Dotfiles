#!/bin/bash
ln -s $(pwd)/.bashrc ~/.bashrc
ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.zshrc ~/.zshrc
ln -s $(pwd)/.bashrc.d ~/.bashrc.d

mkdir -p ~/.ssh
ln -s $(pwd)/.ssh/config ~/.ssh/config
