let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
