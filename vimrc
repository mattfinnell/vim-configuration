" Download vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Declare all plugins
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/altercation/vim-colors-solarized'
Plug 'https://github.com/mattn/emmet-vim'
Plug 'https://github.com/scrooloose/nerdcommenter'
Plug 'https://github.com/python-mode/python-mode'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/hashivim/vim-vagrant'

call plug#end()

" Install all of the plugins above if not already installed
if empty(glob("~/.vim/plugged"))
    PlugInstall
endif

let mapleader = ","
nmap <leader> rc :tabedit $MYVIMRC <CR>

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
set expandtab

colorscheme solarized

let g:bufferline_echo = 0
set shortmess+=O

" Set nerdcommenter settings
let g:NERDSpaceDelims = 1 
let g:NERDDefaultAlign = 'left'
au FileType * set fo-=c fo-=r fo-=o " disable comment on newline after comment block

" Set the powerline fonts
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

" Autoclose YouCompleteMe Documentation Preivew after inserting
let g:ycm_autoclose_preview_window_after_insertion = 1

" Javascript, set elint configuration if there exists a project eslintrc file
autocmd FileType javascript let b:syntastic_checkers = findfile('.eslintrc', '.;') != '' ? ['eslint'] : ['standard']
