set nocompatible
filetype off

if has('autocmd')
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

set rtp+=~/.vim/bundle/vundle
call vundle#rc()
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
Bundle 'vim-ruby/vim-ruby.git'
Bundle 'mattn/gist-vim.git'
Bundle 'tomtom/tcomment_vim.git'
Bundle 'Lokaltog/powerline.git'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'tpope/vim-eunuch.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'jnwhiteh/vim-golang.git'
Bundle 'L9'
Bundle 'FuzzyFinder'

syntax enable
let g:solarized_termtrans = 1
colorscheme solarized
if has('gui_running')
  set guifont=Inconsolata\ for\ Powerline:h14
  set background=dark
  autocmd VimEnter * NERDTree
  autocmd VimEnter * wincmd p
  autocmd BufEnter * cd %:p:h
else
  set background=dark
  set mouse=a
endif
let g:Powerline_symbols = 'fancy'

filetype plugin indent on

let mapleader = ","

set number
set ruler

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set smartindent
set autoindent

set laststatus=2
set linespace=3

set wrap
set textwidth=79
set formatoptions=qrn1

set hlsearch
set ignorecase
set incsearch
set smartcase

nnoremap <leader>q gqip

set foldenable
map ,c <c-_><c-_>

set clipboard=unnamed
noremap <leader>y "+y
noremap <leader>yy "+yy
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>
