set nocompatible
syntax on
filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Make sure you use single quotes
Plugin 'VundleVim/Vundle.vim'

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plugin 'junegunn/vim-easy-align'

Plugin 'dense-analysis/ale'

Plugin 'integralist/vim-mypy'

Plugin 'rust-lang/rust.vim'

Plugin 'preservim/nerdtree'

Plugin 'ycm-core/youcompleteme'
" Plugin 'davidhalter/jedi-vim'

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

"let g:jedi#environment_path = '/Users/gregoryamorim/anaconda3/bin/python3.8'
"let g:jedi#use_splits_not_buffers = 'left'

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

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


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
hi PmenuSel ctermfg=green
