" hotkeys
nnoremap <Space> <C-W>gf
nnoremap <C-H> :tabprevious<CR>
nnoremap <C-L> :tabnext<CR>

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

" fix colorscheme in tmux
set background=dark
