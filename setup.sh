#!/bin/bash

# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# copy config
cp -r ./config/* ~/.config/
cp .zshrc ~/.zshrc
cp .config.sh ~/.config.sh
cp .gitconfig ~/.gitconfig

echo "Done!"
