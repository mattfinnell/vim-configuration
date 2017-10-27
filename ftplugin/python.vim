setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4
setlocal smarttab

" PYMODE : enable
let g:pymode = 1

" PYMODE : disable the following
let g:pymode_virtualenv = 0
let g:pymode_folding = 0
let g:pymode_indent  = 0
let g:pymode_doc     = 0
let g:pymode_rope    = 0

" PYMODE.Linting
let g:pymode_lint            = 1
let g:pymode_lint_write      = 1
let g:pymode_lint_unmodified = 0
let g:pymode_lint_checkers   = ['pep8']

" PYMODE.Syntax
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_print_as_function = 1
