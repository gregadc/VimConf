set nocompatible
syntax on
filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Make sure you use single quotes
Plugin 'VundleVim/Vundle.vim'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plugin 'junegunn/vim-easy-align'

" Plugin outside ~/.vim/plugged with post-update hook
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plugin 'dense-analysis/ale'

Plugin 'integralist/vim-mypy'

Plugin 'davidhalter/jedi-vim'

Plugin 'rust-lang/rust.vim'

call vundle#end()
filetype plugin indent on    " required

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:ale_linters = {'python': ['prospector', 'flake8', 'pylint'],'rust':['analyzer'], 'javascript': ['eslint']}
let g:ale_linters_explicit = 1
let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace','remove_trailing_lines'] }
let g:syntastic_python_checkers = ['pylint', 'pyls', 'pycodestyle']
let g:rustfmt_autosave = 1
let g:ale_completion_enabled = 1

"let g:jedi#environment_path = "/Users/gregoryamorim/anaconda3/bin/python3.8"

"set statusline+=%{SyntasticStatuslineFlag()}

set nocompatible
set ruler

syntax on
set nu
set wildignore=*.o,*~,*.pyc*.swp,*.pyo

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set ffs=unix,dos,mac

" Filetype
filetype plugin on
filetype indent on

" Tabs
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

set incsearch
set hlsearch
set showcmd

set laststatus=2
set history=1000
set undolevels=1000

set title
set visualbell
set noerrorbells

" Remember cursor
if has("autocmd")
    filetype plugin indent on
    autocmd FileType text setlocal textwidth=78

    autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \ exe "normal g`\"" |
    \ endif
endif

set backspace=indent,eol,start
set completeopt=menu,menuone,preview,noselect,noinsert
