"  _    ___              ____  __                         __  __  _
" | |  / (_)___ ___     / __ \/ /_  ______ _   ________  / /_/ /_(_)___  ____ ______
" | | / / / __ `__ \   / /_/ / / / / / __ `/  / ___/ _ \/ __/ __/ / __ \/ __ `/ ___/
" | |/ / / / / / / /  / ____/ / /_/ / /_/ /  (__  )  __/ /_/ /_/ / / / / /_/ (__  )
" |___/_/_/ /_/ /_/  /_/   /_/\__,_/\__, /  /____/\___/\__/\__/_/_/ /_/\__, /____/
"                                  /____/                             /____/

" Download vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Make sure that the plugin screen doesn't do an obnoxious split
let g:plug_window = 'enew'

" Declare all plugins
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/altercation/vim-colors-solarized'
Plug 'https://github.com/mattn/emmet-vim'
Plug 'https://github.com/scrooloose/nerdcommenter'
Plug 'https://github.com/python-mode/python-mode'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/hashivim/vim-vagrant'
Plug 'https://github.com/airblade/vim-gitgutter'

call plug#end()

" Install all of the plugins above if not already installed
if empty(glob("~/.vim/plugged"))
    PlugInstall
endif

"     _   __      __  _               ____       ____            ____
"    / | / /___ _/ /_(_)   _____     / __ \___  / __/___ ___  __/ / /______
"   /  |/ / __ `/ __/ / | / / _ \   / / / / _ \/ /_/ __ `/ / / / / __/ ___/
"  / /|  / /_/ / /_/ /| |/ /  __/  / /_/ /  __/ __/ /_/ / /_/ / / /_(__  )
" /_/ |_/\__,_/\__/_/ |___/\___/  /_____/\___/_/  \__,_/\__,_/_/\__/____/

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
set expandtab

"     ____  __            _          ______            _____                        __  _
"    / __ \/ /_  ______ _(_)___     / ____/___  ____  / __(_)___ ___  ___________ _/ /_(_)___  ____  _____
"   / /_/ / / / / / __ `/ / __ \   / /   / __ \/ __ \/ /_/ / __ `/ / / / ___/ __ `/ __/ / __ \/ __ \/ ___/
"  / ____/ / /_/ / /_/ / / / / /  / /___/ /_/ / / / / __/ / /_/ / /_/ / /  / /_/ / /_/ / /_/ / / / (__  )
" /_/   /_/\__,_/\__, /_/_/ /_/   \____/\____/_/ /_/_/ /_/\__, /\__,_/_/   \__,_/\__/_/\____/_/ /_/____/
"               /____/                                   /____/

colorscheme solarized

" Set nerdcommenter settings
let g:NERDSpaceDelims = 1 
let g:NERDDefaultAlign = 'left'

" airline-powerline fonts
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

" Autoclose YouCompleteMe Documentation Preview after inserting
let g:ycm_autoclose_preview_window_after_insertion = 1
