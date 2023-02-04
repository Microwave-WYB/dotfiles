#!/bin/bash

cp -r ~/.config/nvim ./config/
cp -r ~/.config/ranger ./config/
cp -r ~/.config/dconf ./config/
cp ~/.zshrc .zshrc
cp ~/.gitconfig .gitconfig
cp ~/.config.sh .config.sh
cp ~/.p10k.zsh .p10k.zsh

echo "Synced"
