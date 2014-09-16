" Basics
set nocompatible
set ttyfast
set encoding=utf8
set t_Co=256
filetype indent plugin on
syntax on

" Useful
set hidden
set wildmenu
set showcmd
set hlsearch

" Usability
set ignorecase
set smartcase
set smarttab
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set mouse=a
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set wrapscan
set textwidth=80
set shiftwidth=4
set tabstop=4

" Remappings
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nnoremap j gj
nnoremap k gk

" Filetypes
autocmd FileType c setlocal shiftwidth=8 tabstop=8

" Colors
colorscheme molokai
hi Normal ctermbg=none
hi NonText ctermbg=none
hi Special ctermbg=none

"" Plugins
"  Pathogen
execute pathogen#infect()

"  Airline
let g:airline_theme='powerlineish'
let g:airline_enable_branch=1
let g:airline_enable_syntastic=1
let g:airline_powerline_fonts=1
let g:airline#extensions#tmuxline#enabled=1
let g:airline#extensions#tabline#enabled=1
