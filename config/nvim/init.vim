" basic settings
source ~/.config/nvim/basic.vim
source ~/.config/nvim/standard-map.vim

" advanced settings
if !exists('g:vscode')
	source ~/.config/nvim/plugins.vim
	source ~/.config/nvim/theme.vim
endif
