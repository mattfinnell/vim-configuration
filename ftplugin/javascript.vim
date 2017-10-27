setlocal shiftwidth=2
setlocal tabstop=2

autocmd FileType javascript let b:syntastic_checkers = findfile('.eslintrc', '.;') != '' ? ['eslint'] : ['standard']
