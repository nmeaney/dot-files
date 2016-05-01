#! usr/bin/env bash
# Create symlinks from home directory

echo "Create symlinks from your home directory to dotfiles"
ln -s ./.bash_profile ~/.bash_profile
ln -s ./.bash_aliases ~/.bash_aliases
ln -s ./.app_dirs ~/.app_dirs
