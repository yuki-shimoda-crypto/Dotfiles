#!/bin/bash
ln -s $(pwd)/.aliases						~/.aliases
ln -s $(pwd)/.bashrc						~/.bashrc
ln -s $(pwd)/.gitconfig						~/.gitconfig
ln -s $(pwd)/.vimrc							~/.vimrc
ln -s $(pwd)/.zshrc							~/.zshrc
ln -s $(pwd)/commit_template.txt			~/commit_template.txt

mkdir -p ~/.ssh
ln -s $(pwd)/.ssh/config					~/.ssh/config

# make .bashrc.d
mkdir -p ~/.bashrc.d
ln -s $(pwd)/.bashrc.d/common.bashrc		~/.bashrc.d/common.bashrc
ln -s $(pwd)/.bashrc.d/fedora.bashrc		~/.bashrc.d/fedora.bashrc
ln -s $(pwd)/.bashrc.d/mac.bashrc			~/.bashrc.d/mac.bashrc
ln -s $(pwd)/.bashrc.d/ubuntu.bashrc		~/.bashrc.d/ubuntu.bashrc
ln -s $(pwd)/.bashrc.d/wsl_ubuntu.bashrc	~/.bashrc.d/wsl_ubuntu.bashrc
