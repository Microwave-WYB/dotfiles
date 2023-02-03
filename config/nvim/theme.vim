set cursorline
set t_Co=256
set termguicolors
color pencil
let g:rehash256 = 1
hi! EndOfBuffer guifg=bg
hi! LineNr guibg=bg
let g:pencil_spell_undercurl = 0 " 0=underline, 1=undercurl (def)
let g:pencil_terminal_italics = 1

" airline
let g:airline_theme = 'pencil'
let g:airline#extensions#tabline#enabled = 1
