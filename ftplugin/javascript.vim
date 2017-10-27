setlocal shiftwidth=2
setlocal tabstop=2

" Set syntastic checker based on local .eslint file
autocmd FileType javascript let b:syntastic_checkers = findfile('.eslintrc', '.;') != '' ? ['eslint'] : ['standard']
