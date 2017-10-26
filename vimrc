" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" You Complete Me and Solarized
" Plug 'https://github.com/Valloric/YouCompleteMe'
Plug 'https://github.com/altercation/vim-colors-solarized'
Plug 'https://github.com/mattn/emmet-vim'
Plug 'https://github.com/scrooloose/nerdcommenter'
Plug 'https://github.com/python-mode/python-mode'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/hashivim/vim-vagrant'

" Initialize plugin system
call plug#end()

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

" Set nerdcommenter settings
let g:NERDSpaceDelims = 1 
let g:NERDDefaultAlign = 'left'
au FileType * set fo-=c fo-=r fo-=o " disable comment on newline after comment block

" Set the powerline fonts
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Autoclose YouCompleteMe Documentation Preivew after inserting
let g:ycm_autoclose_preview_window_after_insertion = 1

" Javascript, set elint configuration if there exists a project eslintrc file
autocmd FileType javascript let b:syntastic_checkers = findfile('.eslintrc', '.;') != '' ? ['eslint'] : ['standard']
