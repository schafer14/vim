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
Plugin 'plasticboy/vim-markdown'
Plugin 'wikitopian/hardmode'
Plugin 'tpope/vim-surround'
Plugin 'luochen1990/rainbow'
Plugin 'godlygeek/tabular'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'jparise/vim-graphql'
Plugin 'Galooshi/vim-import-js'


call vundle#end()            " required
filetype plugin indent on    " required

let mapleader = ","

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsForwardTrigger="<c-j>"
let g:UltiSnipsBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetsDir = "~/.vim/bundle/ultisnips/UltiSnips"

nmap <leader>ue :UltiSnipsEdit<cr>

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

" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

map <leader>w <C-w>
tmap <leader>w <C-w>
tmap jk <C-\><C-N>
tmap gt <C-\><C-N>gt

set clipboard=unnamedplus

colorscheme gruvbox
set background=dark

map <leader>nt :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set nocompatible
filetype plugin on
syntax on

let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat = 0
autocmd BufWritePre,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue Prettier

let g:prettier#config#semi = 'false'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = 'node_modules\|git'

let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

let g:vim_markdown_frontmatter = 1

set incsearch
map <leader>tn :%s/import\(\_.\{-}\)from \(.*\)/const\1= require(\2)/g<CR>
