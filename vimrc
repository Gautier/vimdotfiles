execute pathogen#infect()

syntax on
filetype plugin indent on

" terminal settings
set t_Co=256
set background=dark
"colorscheme Tomorrow-Night-Eighties
colorscheme xoria256
set gfn=Monospace\ 9
set termencoding=utf-8
set enc=utf-8
set fenc=utf-8

" search
set incsearch
set hls
nnoremap / /\v
vnoremap / /\v
" ignore case if pattern all lowercase
set ignorecase
set smartcase
" /g by default, append /g if you ned to
set gdefault

" misc
set wildmenu
set cursorline

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

set pastetoggle=<F2>
let mapleader = ","
:map Q <Nop>

" status line
set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
set laststatus=2
highlight ModeMsg cterm=bold ctermfg=cyan ctermbg=black
highlight StatusLineNC cterm=bold ctermfg=black ctermbg=green
" Filename in white.
highlight User2 cterm=bold ctermfg=gray ctermbg=blue
"  Modified flag on statusline.
highlight User1 ctermfg=red ctermbg=blue

" more ui
highlight trailing_whitespaces ctermbg=red guibg=red
let tws_match = matchadd('trailing_whitespaces', '\s\+$')
set colorcolumn=80

" command line like normal shell
:cnoremap <C-a>  <Home>
:cnoremap <C-b>  <Left>
:cnoremap <C-f>  <Right>
:cnoremap <C-d>  <Delete>
:cnoremap <M-b>  <S-Left>
:cnoremap <M-f>  <S-Right>
:cnoremap <M-d>  <S-right><Delete>
:cnoremap <Esc>b <S-Left>
:cnoremap <Esc>f <S-Right>
:cnoremap <Esc>d <S-right><Delete>
:cnoremap <C-g>  <C-c>

" backup files
set undofile
set nobackup
set noswapfile

" General syntax
syntax on
set softtabstop=4
set shiftwidth=4
set tabstop=4
"set textwidth=80
set expandtab
set smartindent
filetype plugin indent on
filetype plugin on
filetype on

" indent perl
autocmd FileType perl set softtabstop=2
autocmd FileType perl set shiftwidth=2
autocmd FileType perl set tabstop=2

" indent bash
autocmd FileType sh set softtabstop=2
autocmd FileType sh set shiftwidth=2
autocmd FileType sh set tabstop=2

autocmd FileType ruby set softtabstop=2
autocmd FileType ruby set shiftwidth=2
autocmd FileType ruby set tabstop=2

" indent html
autocmd FileType html set softtabstop=2
autocmd FileType html set shiftwidth=2
autocmd FileType html set tabstop=2
autocmd FileType htmldjango set softtabstop=2
autocmd FileType htmldjango set shiftwidth=2
autocmd FileType htmldjango set tabstop=2

" indent js
autocmd FileType javascript set softtabstop=2
autocmd FileType javascript set shiftwidth=2
autocmd FileType javascript set tabstop=2

" Filetypes mapping
au BufNewFile,BufRead *.mxml set filetype=javascript
au BufNewFile,BufRead *.as set filetype=javascript
au BufNewFile,BufRead *.vtl set filetype=velocity
au BufNewFile,BufRead *.pde set filetype=c
au BufNewFile,BufRead *.clj set filetype=clojure
au BufNewFile,BufRead *.go set filetype=go
au BufNewFile,BufRead *.sls set filetype=yaml
au BufNewFile,BufRead *.rst set filetype=rest
au BufNewFile,BufRead Vagrantfile set filetype=ruby

au! BufRead,BufNewFile *.mkd set filetype=mkd
au! BufRead,BufNewFile *.md set filetype=mkd
au! BufRead,BufNewFile *.glsl set filetype=c
autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
autocmd BufRead *.md  set ai formatoptions=tcroqn2 comments=n:&gt;
au! BufRead,BufNewFile *.html.mu set filetype=html
au! BufRead,BufNewFile *.html.mu set filetype=html

" At the end of the file for easiest hot customisation
map <Leader>tt :!./manage.py test<CR>
