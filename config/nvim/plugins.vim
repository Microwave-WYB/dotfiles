" vim-plug
call plug#begin('~/.local/share/nvim/plugged')
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'majutsushi/tagbar'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'github/copilot.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'preservim/nerdtree'
	Plug 'preservim/vim-colors-pencil'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-fugitive'
	Plug 'rafaqz/ranger.vim'
	Plug 'mhinz/vim-startify'
call plug#end()

" tag bar
nmap <C-t> :TagbarToggle<CR>
let g:tagbar_ctags_bin = "~/.local/share/bin/ctags"

" ctrlp
nmap <C-p> :CtrlPMixed<CR>

" coc
" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> gh :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('gh', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)
