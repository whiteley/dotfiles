set nocompatible
filetype off

if has('autocmd')
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'mattn/gist-vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'Lokaltog/powerline'
Bundle 'tpope/vim-eunuch'
Bundle 'scrooloose/nerdtree'
Bundle 'jnwhiteh/vim-golang'
Bundle 'rking/ag.vim'
Bundle 'Arkham/vim-tango'
Bundle 'tpope/vim-unimpaired'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'corntrace/bufexplorer'
Bundle 'helino/vim-json'

" vim-scripts
Bundle 'L9'
Bundle 'FuzzyFinder'

syntax enable
colorscheme tango
set background=dark
if has('gui_running')
  set antialias
  set autoread
  set gcr=a:blinkwait0
  set guifont=Source\ Code\ Pro\ for\ Powerline:h12
  set visualbell
  autocmd VimEnter * NERDTree
  autocmd VimEnter * wincmd p
  autocmd BufEnter * cd %:p:h
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
set foldenable
set scrolloff=4

set laststatus=2
set linespace=3

set wrap
set textwidth=79
set formatoptions=qrn1

set hlsearch
set ignorecase
set incsearch
set smartcase

" map      - all recursive
" nmap     - normal recursive
" vmap     - visual recursive
" noremap  - all non-recursive
" nnoremap - normal non-recursive
" vnoremap - visual non-recursive
map <leader>c <c-_><c-_>
map <leader>q gqip
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" set clipboard=unnamed
" noremap <leader>y "+y
" noremap <leader>yy "+yy
