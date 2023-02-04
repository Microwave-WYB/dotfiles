#!/bin/bash

# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# copy config, backup old config if exists
for file in $(ls ./config); do
	if [ -f ~/.config/$file ]; then
		mv ~/.config/$file ~/.config/$file.bak
	fi
done
cp -r ./config/* ~/.config/

if [ -f ~/.zshrc ]; then
	mv ~/.zshrc ~/.zshrc.bak
fi
cp .zshrc ~/.zshrc

if [ -f ~/.config.sh ]; then
	mv ~/.config.sh ~/.config.sh.bak
fi
cp .config.sh ~/.config.sh

if [ -f ~/.gitconfig ]; then
	mv ~/.gitconfig ~/.gitconfig.bak
fi
cp .gitconfig ~/.gitconfig

echo "Done!"
