" gui
if has('gui_running')
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set guioptions-=R
    set guioptions-=l
endif

" line numbers
set relativenumber

" syntax highlight
syntax on

" better copy paste
set clipboard=unnamed

" normalize tab
function SetTabIndent2()
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
endfunction

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smartindent

" my backspace not works with out this
set backspace=indent,eol,start

" disable swapfile
set noswapfile
set nobackup
set nowritebackup

" colorscheme
set background=dark
highlight SignColumn ctermfg=White ctermbg=Black cterm=None
highlight VertSplit ctermfg=Yellow ctermbg=Black cterm=None
highlight StatusLine ctermfg=Black ctermbg=Grey cterm=None
highlight StatusLineNC ctermfg=Black ctermbg=Yellow cterm=None
highlight Flake8_Error ctermfg=Red ctermbg=Black cterm=None
highlight Flake8_Warning ctermfg=Magenta ctermbg=Black cterm=None
highlight Flake8_PyFlake ctermfg=Blue ctermbg=Black cterm=None
highlight Flake8_Complexity ctermfg=Blue ctermbg=Black cterm=None
highlight Flake8_Naming ctermfg=Blue ctermbg=Black cterm=None

" remove comment section for Explore
let g:netrw_banner=0

" sign column
set scl=yes

" Plugins
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/bundle')
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
"Plug 'nvie/vim-flake8'
call plug#end()
filetype plugin indent on

" status line
set statusline=%f
set statusline+=\ %=
set statusline+=\ %l
set statusline+=\ %c

" hotkeys
let g:mapleader = ","
nnoremap <Space> <C-W>gf
nnoremap <C-J> :tabprevious<CR>
nnoremap <C-K> :tabnext<CR>
nnoremap <leader>d :NERDTree<CR>

" ale
let g:ale_linters = {
\   'python': ['flake8'],
\   'haskell': ['ghc']
\}
let g:ale_fixers = {
\    'python': ['black'],
\    'haskell': ['ormolu']
\}
let g:ale_fix_on_save = 1
