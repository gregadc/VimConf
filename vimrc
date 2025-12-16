set nocompatible
syntax on
filetype plugin indent on

set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_linters = {'python': ['prospector', 'flake8', 'pylint'], 'rust':['analyzer', 'rustc'], 'javascript': ['eslint']}
let g:ale_linters_explicit = 1
let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }
let g:syntastic_python_checkers = ['pylint', 'pyls', 'pycodestyle']
let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'
let g:rustfmt_autosave = 1
let g:ale_completion_enabled = 1
let g:ale_rust_analyzer_executable = 'rust-analyzer'
let g:rustfmt_autosave = 1
" let g:ale_rust_rls_toolchain = 'stable'
nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Make sure you use single quotes
Plugin 'VundleVim/Vundle.vim' " Install ripgrep also

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

Plugin 'junegunn/vim-easy-align'

Plugin 'dense-analysis/ale'

Plugin 'integralist/vim-mypy'

Plugin 'rust-lang/rust.vim'

Plugin 'preservim/nerdtree'

Plugin 'davidhalter/jedi-vim'

call vundle#end()
filetype plugin indent on    " required

" jedi
let g:jedi#use_tabs_not_buffers = 0  " use buffers instead of tabs
let g:jedi#show_call_signatures = "1"
let g:jedi#goto_command = "<localleader>gt"
let g:jedi#goto_assignments_command = "<localleader>ga"
let g:jedi#goto_definitions_command = "<localleader>gg"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<localleader>u"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"set statusline+=%{SyntasticStatuslineFlag()}

set nocompatible
set ruler

syntax on
" colorscheme mycolor
"let g:sonokai_style = 'andromeda'
"let g:sonokai_better_performance = 1
"colorscheme sonokai

"enable mouse support
set mouse=r
set nu
set wildignore=*.o,*~,*.pyc*.swp,*.pyo

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set ffs=unix,dos,mac

" Filetype
filetype plugin on
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
"
filetype indent on

" Tabs
set tabstop=4
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

" let g:ycm_python_interpreter_path = ''
" let g:ycm_python_sys_path = []
"let g:ycm_extra_conf_vim_data = [
"  \  'g:ycm_python_interpreter_path',
"  \  'g:ycm_python_sys_path'
"  \]
"let g:ycm_global_ycm_extra_conf = '~/Developer/global_extra_conf.py'
"let g:ycm_rust_src_path='~/Developer/rust-master/src/'

set backspace=indent,eol,start
set completeopt=menu,menuone,preview,noselect,noinsert
hi PmenuSel ctermfg=green


" Shorcut Toggle paste mode avec Ctrl + p
nnoremap <C-p> :set invpaste paste?<CR>
inoremap <C-p> <C-o>:set invpaste paste?<CR>

" Shorcut open :Files
nnoremap <C-f> :Files<CR>

" Shorcut open ripgrep :RG
nnoremap <C-c> :Rg<CR>
" nnoremap <C-c> :Rg -F
