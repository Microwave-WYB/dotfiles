set clipboard=unnamedplus
set nu
set expandtab
set shiftwidth=4

" Motion
imap jk <Esc>
map 0 ^
map - g_
nmap j gj
nmap k gk
imap <C-l> <right>
imap <C-h> <left>
imap <C-j> <Esc>gja
imap <C-k> <Esc>gka

" Navigation
nmap q :bd<Cr>
nmap <M-l> :bn<Cr>
nmap <M-h> :bp<Cr>
nmap <C-h> <C-w><Left>
nmap <C-l> <C-w><Right>
nmap <C-k> <C-w><Up>
nmap <C-d> <C-w><Down>

" Display
highlight ExtraWhitespace ctermbg=grey guibg=grey
match ExtraWhitespace /\s\+$/

