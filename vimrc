syntax on
set nocompatible
set showmode
set wildmenu
set visualbell
set smartindent
set smartcase
set ignorecase
set incsearch
set nu
set tabstop=4 shiftwidth=4
set ruler
set expandtab
set smarttab
set hlsearch
set guifont=Menlo:h16
"set so=999
set laststatus=2
execute pathogen#infect()
colorscheme solarized
set background=dark
let g:solarized_termcolors=256
filetype plugin indent on
"Brace completion
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap		[  []<Left>

set whichwrap+=<,>,h,l,[,]

"Esc-Esc writes
map <Esc><Esc> :w<CR>

"Allow Ctrl commands to take effect
silent !stty -ixon > /dev/null 2>/dev/null

"Ctrl-S saves
imap <C-S> <Esc>:w<CR>i
nmap <C-S> :w<CR>

"Ctrl-Q quits
imap <C-Q> <Esc>:q<CR>
nmap <C-Q> :q<CR>

"Ctrl-z undos
imap <C-Z> <Esc>u<CR>
nmap <C-Q> u

"Ctrl-M runs .py files
autocmd Filetype python nnoremap <buffer><C-M> :exec '!clear;python' shellescape(@%,1)<cr>

":Q quits"
command! -bang Q quit<bang>

":W writes"
command! -bang W write<bang>

"Ctrl [h,j,k,l] to toggle between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Cmd+shift+t/T switches between tabs
map <D-S-]> gt
map <D-S-[> gT

"Cmd [1-9] will jumb to a given tab
"Cmd [0] jumps to the last tab
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>

"Indenting text left and right
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

"Bubble single lines
nmap <C-up> ddkP
nmap <C-down> ddp
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

"Load tag closing utility for HTML, XML files
:let g:closetag_html_style=1
:let b:closetag_html_style=1
:source ~/.vim/scripts/closetag.vim
:au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim

" Scrolling up and down
map <D-j> <C-d>
map <D-k> <C-u>

nmap ,f :FufFileWithCurrentBufferDir<CR>
nmap ,b :FufBuffer<CR>
nmap ,t :FufTaggedFile<CR>

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" My preference with using buffers. See `:h hidden` for more details
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

