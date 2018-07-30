set nocompatible              " be iMproved, required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-bufferline'
Plugin 'airblade/vim-gitgutter'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/nerdtree'
Plugin 'mileszs/ack.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'morhetz/gruvbox'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mxw/vim-jsx'
Plugin 'prettier/vim-prettier'
Plugin 'vimwiki/vimwiki'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

call vundle#end()            " required
filetype plugin indent on    " required

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsForwardTrigger="<c-j>"
let g:UltiSnipsBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = "~/.vim/bundle/ultisnips/UltiSnips"

imap jk <Esc>

set showmode
set nowrap
set tabstop=2
set smarttab
set softtabstop=2
set expandtab
set shiftwidth=2
set autoindent
set copyindent
set number relativenumber
set ignorecase
set visualbell

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

map , <C-w>
tmap , <C-w>
tmap jk <C-\><C-N>
tmap gt <C-\><C-N>gt

set clipboard=unnamedplus
autocmd vimenter * NERDTree

colorscheme gruvbox
set background=dark

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set nocompatible
filetype plugin on
syntax on

let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat = 0
autocmd BufWritePre,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue Prettier

let g:prettier#config#semi = 'false'

let g:ctrlp_custom_ignore = 'node_modules\|git'
