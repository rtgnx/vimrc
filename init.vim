source ~/.vim/base.vim

Module 'nav'
Module 'vcs'
Module 'extras'
Module 'lang/go'
Module 'lang/js'
Module 'lang/css'
Module 'defaults'
Module 'lang/php'
Module 'lang/java'
Module 'lang/jade'
Module 'lang/html'
Module 'lang/latex'
Module 'lang/python'
Module 'lang/csharp'
Module 'lang/linters'
Module 'lang/markdown'
Module 'lang/completion'

call g:Init()

if !isdirectory(expand(g:root.'/plugins'))
  call PlugInstall!
endif
