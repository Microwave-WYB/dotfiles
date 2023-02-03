#!/bin/bash

cp -r ~/.config/nvim ./config/nvim
cp -r ~/.config/ranger ./config/ranger
cp -r ~/.config/dconf ./config/dconf
cp ~/.zshrc .zshrc
cp ~/.gitconfig .gitconfig
cp ~/.config.sh .config.sh
cp ~/.p10k.zsh .p10k.zsh

echo "Synced"
