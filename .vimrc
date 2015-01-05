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
set cursorline

" Usability
set incsearch
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
set wrap
set linebreak
set shiftwidth=4
set tabstop=4

" Folding
set foldmethod=indent
set foldnestmax=3
set nofoldenable " Don't fold by default

" Command line tab completion
set wildmode=list:longest   " Make cmdline tab completion similar to bash
set wildmenu                " Enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ " Stuff to ignore when tab completing

" Remappings
let mapleader=" "

nnoremap j gj
nnoremap k gk

nnoremap <Leader>n :bnext<CR>
nnoremap <Leader>p :bprev<CR>
nnoremap <Leader>d :bdelete<Cr>

nnoremap <Leader>e  :e#<CR>
nnoremap <Leader>h  :nohlsearch<CR>
nnoremap <Leader>t  :NERDTreeToggle<CR>

" Filetypes
autocmd FileType c       setlocal shiftwidth=8 tabstop=8
autocmd FileType haskell setlocal expandtab
autocmd FileType python  setlocal expandtab
autocmd FileType ruby    setlocal expandtab

" Colors
colorscheme molokai
highlight Normal       ctermbg=none
highlight NonText      ctermbg=none
highlight Special      ctermbg=none
highlight CursorLineNr ctermbg=236

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

" CtrlP
let g:ctrlp_map='<Leader>f'
