" Do syntax checks when buffers are first loaded and upon saving buffers.
let g:syntastic_check_on_open=1

" Use the flake8 checker. Has to be installed. Can be done via easy_install or
" pip. This one is much faster than pylint although not as thorough but at the
" same time also does some syntax checking unlike simple pyflakes.
let g:syntastic_python_checker = 'flake8'

" Toggle the error pane.
nmap <leader>er :Error<CR>
