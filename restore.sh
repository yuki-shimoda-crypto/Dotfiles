#!/bin/bash
ln -s $(pwd)/.bashrc ~/.bashrc
ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.zshrc ~/.zshrc

mkdir -p ~/.ssh
ln -s $(pwd)/.ssh/config ~/.ssh/config
