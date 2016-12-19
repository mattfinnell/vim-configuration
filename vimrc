execute pathogen#infect()
execute pathogen#helptags()
syntax on

" set [normal],rc open up the vimrc in a new buffer
let mapleader = ","
nmap <leader>rc :tabedit $MYVIMRC <CR>

" Stock Configurations
set laststatus=2
set nu
set t_Co=256
set autoread
set background=dark
set shiftwidth=4
set tabstop=4
set autoindent
set noswapfile
set nocompatible
set nowrap
set syntax

colorscheme solarized

let g:airline_powerline_fonts = 1 
