let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

augroup omnifuncs
    autocmd FileType java setlocal omnifunc=javacomplete#Complete
    autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
augroup end
