#!/bin/bash
# Create symlinks from home directory
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "1) Backed up original .bash_profile and .bash_aliases"
echo "2) Created symlinks from your home directory to $DIR"

mkdir ~/dotfiles_backup/

cp ~/.bash_profile ~/dotfiles_backup/.bash_profile_backup
rm ~/.bash_profile
ln -s $DIR/.bash_profile ~/.bash_profile

cp ~/.bash_aliases ~/dotfiles_backup/.bash_aliases_backup
rm ~/.bash_aliases
ln -s $DIR/.bash_aliases ~/.bash_aliases

cp ~/.app_dirs ~/dotfiles_backup/.app_dirs_backup
rm ~/.app_dirs
ln -s $DIR/.app_dirs ~/.app_dirs
