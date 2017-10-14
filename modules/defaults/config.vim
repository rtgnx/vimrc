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
set number
set smartcase
set ignorecase

set visualbell
set noerrorbells
set autowrite
set linespace=5
set laststatus=2
set scrolloff=5
set cursorline
set autowrite

let mapleeader = ","
let g:mapleader = ","

" === GUI Options

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

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

" === Whitespaces ====

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

match ExtraWhitespace /\s\+$\| \+\ze\t| ^\t*\zs \+/

" === Git commit

autocmd FileType gitcommit DiffGitCached | wincmd J
autocmd Filetype gitcommit set textwidth=72
