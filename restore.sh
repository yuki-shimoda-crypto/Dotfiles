#!/bin/bash

# Create symbolic links for configuration files in the home directory
# ln -s $(pwd)/.aliases ~/.aliases
# ln -s $(pwd)/.bashrc ~/.bashrc
ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/.vimrc ~/.vimrc
# ln -s $(pwd)/.zshrc ~/.zshrc

# Set up SSH configuration
mkdir -p ~/.ssh
ln -s $(pwd)/.ssh/config ~/.ssh/config

# # Create and link bashrc configuration files
# mkdir -p ~/.bashrc.d
# ln -s $(pwd)/.bashrc.d/common.bashrc ~/.bashrc.d/common.bashrc
# ln -s $(pwd)/.bashrc.d/fedora.bashrc ~/.bashrc.d/fedora.bashrc
# ln -s $(pwd)/.bashrc.d/mac.bashrc ~/.bashrc.d/mac.bashrc
# ln -s $(pwd)/.bashrc.d/ubuntu.bashrc ~/.bashrc.d/ubuntu.bashrc
# ln -s $(pwd)/.bashrc.d/wsl_ubuntu.bashrc ~/.bashrc.d/wsl_ubuntu.bashrc

# Set up commit templates
mkdir -p ~/commit_template
ln -s $(pwd)/commit_template/commit_template_ja.txt ~/commit_template/commit_template_ja.txt
ln -s $(pwd)/commit_template/commit_template_en.txt ~/commit_template/commit_template_en.txt

