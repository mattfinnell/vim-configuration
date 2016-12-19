setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4
setlocal smarttab
setlocal expandtab

" PYMODE : enable
let g:pymode = 1

" PYMODE : disable the following
let g:pymode_virtualenv = 0
let g:pymode_folding    = 0
let g:pymode_indent     = 0
let g:pymode_doc        = 0
let g:pymode_rope       = 0

" PYMODE.Linting
let g:pymode_lint            = 1
let g:pymode_lint_write      = 1
let g:pymode_lint_unmodified = 0
let g:pymode_lint_checkers   = ['pep8']
let g:pymode_lint_ignore = "E203,E302,E501,E303,E221,W0611,W391,E251,W0401,E261" "annoying spacing shit

" PYMODE.Syntax
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_print_as_function = 1

" Error codes that were made by pussies
" E261  - two spaces before a comment?? Really??
" E251  - 'unexpected spaces around '=' in default parameter assignment' ...wow someone needs a hug
" W0401 - from __ import * ==> 'unable to ditect undefined names'... yeah, fucking wild[card] right??

