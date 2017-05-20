filetype indent on
set t_Co=256

set nocompatible
set regexpengine=1

set incsearch
set tabstop=2
set smarttab
set softtabstop=2
set expandtab
set shiftwidth=2
set shiftround
set backspace=indent,eol,start
set copyindent
set autoindent
set mouse=a
set showmode
set nowrap
set relativenumber
set smartcase
set ignorecase

set visualbell
set noerrorbells
set autowrite
set linespace=15
set laststatus=2
set scrolloff=5
set cursorline

let mapleeader = ","
let g:mapleader = ","


" === Indent ===
vnoremap < <gv
vnoremap > >gv

" === Clipboard ===
noremap p "*p
noremap y "*y
noremap yy "*yy
noremap ya ggVGy


" === 80th column ===
if exists('+colorcolumn')
    set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('over 80', '\%>80v.\+', -1)
endif

" === Wild ignore
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.dll

" === Nav ===
no <up> ddkP
no <down> ddp
noremap <right> :bn<cr>
noremap <left> :bp<cr>
noremap H ^
noremap L $
vnoremap H ^
vnoremap L $

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l


nmap sp :split<cr>
nmap vs :vsplit<cr>
highlight CursorLine gui=underline ctermbg=0
