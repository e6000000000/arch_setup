set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'preservim/nerdtree'
	Plugin 'tpope/vim-commentary'
	Plugin 'neoclide/coc.nvim', {'branch': 'release'}
call vundle#end()            " required
filetype plugin indent on    " required


" line numbers
set number

" syntax highlight
syntax on

" better copy paste
set clipboard=unnamed

" tabspace is 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" my backspace not works with out this
set backspace=indent,eol,start

" disable swapfile
set noswapfile
set nobackup
set nowritebackup

" autostart NerdTree
autocmd VimEnter * NERDTree
