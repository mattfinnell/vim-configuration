" _    ___              ____  __                         __  __  _
"| |  / (_)___ ___     / __ \/ /_  ______ _   ________  / /_/ /_(_)___  ____ ______
"| | / / / __ `__ \   / /_/ / / / / / __ `/  / ___/ _ \/ __/ __/ / __ \/ __ `/ ___/
"| |/ / / / / / / /  / ____/ / /_/ / /_/ /  (__  )  __/ /_/ /_/ / / / / /_/ (__  )
"|___/_/_/ /_/ /_/  /_/   /_/\__,_/\__, /  /____/\___/\__/\__/_/_/ /_/\__, /____/
"                                 /____/                             /____/

" Download vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Make sure that the plugin screen doesn't do an obnoxious split
let g:plug_window = 'enew'

" Declare all plugins
call plug#begin('~/.vim/plugged')

" A E S T H E T I C S
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/altercation/vim-colors-solarized'

" Utilities
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'https://github.com/Valloric/YouCompleteMe'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/scrooloose/nerdcommenter'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/hashivim/vim-vagrant'

" Language Specific [ Python and Jinja ]
Plug 'https://github.com/python-mode/python-mode'
Plug 'https://github.com/Glench/Vim-Jinja2-Syntax'

" Language Specific [ Javascript and React ]
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'https://github.com/mxw/vim-jsx'

" Language Specific [ HTML ]
Plug 'https://github.com/mattn/emmet-vim'

" Language Specific [ CSS ]
Plug 'https://github.com/ap/vim-css-color'

call plug#end()

" Install all of the plugins above if not already installed
if empty(glob('~/.vim/plugged'))
    PlugInstall
endif

"    _   __      __  _               ______            _____                        __  _
"   / | / /___ _/ /_(_)   _____     / ____/___  ____  / __(_)___ ___  ___________ _/ /_(_)___  ____
"  /  |/ / __ `/ __/ / | / / _ \   / /   / __ \/ __ \/ /_/ / __ `/ / / / ___/ __ `/ __/ / __ \/ __ \
" / /|  / /_/ / /_/ /| |/ /  __/  / /___/ /_/ / / / / __/ / /_/ / /_/ / /  / /_/ / /_/ / /_/ / / / /
"/_/ |_/\__,_/\__/_/ |___/\___/   \____/\____/_/ /_/_/ /_/\__, /\__,_/_/   \__,_/\__/_/\____/_/ /_/
"                                                        /____/

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

" Automatically Remove trailing whitespace
" This black magic was pulled from the following SO link
"
" https://stackoverflow.com/a/1618401/3834962

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

"    ____  __            _          ______            _____                        __  _
"   / __ \/ /_  ______ _(_)___     / ____/___  ____  / __(_)___ ___  ___________ _/ /_(_)___  ____  _____
"  / /_/ / / / / / __ `/ / __ \   / /   / __ \/ __ \/ /_/ / __ `/ / / / ___/ __ `/ __/ / __ \/ __ \/ ___/
" / ____/ / /_/ / /_/ / / / / /  / /___/ /_/ / / / / __/ / /_/ / /_/ / /  / /_/ / /_/ / /_/ / / / (__  )
"/_/   /_/\__,_/\__, /_/_/ /_/   \____/\____/_/ /_/_/ /_/\__, /\__,_/_/   \__,_/\__/_/\____/_/ /_/____/
"              /____/                                   /____/

" Colorscheme configuration, duhhh
colorscheme solarized

" Nerdcommenter
let g:NERDSpaceDelims  = 1
let g:NERDDefaultAlign = 'left'

" Airline Status Bar
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'deus'

" You Complete Me (YCM)
let g:ycm_autoclose_preview_window_after_insertion = 1

" CTRL-P Fuzzy Finder
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git'
