" Vundle Managed
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle 
call vundle#rc()
" let Vundle manage Vundle
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/powerline'
Bundle 'rking/ag.vim'
Bundle 'nanotech/jellybeans.vim'
filetype plugin indent on


"ctrlp custom ignore 
let g:ctrlp_custom_ignore = '\v[\/](\.git|node_modules|build)$'

"netrw
let g:netrw_liststyle=3

"powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif
set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)


" original repos on github
syntax on
set incsearch
set ignorecase
set smartcase
set hlsearch
set number
set ruler


autocmd BufNewFile,BufRead *.json,*.coffee set ft=javascript
autocmd BufNewFile,BufRead *.json set ft=javascript

set shiftwidth=2
set tabstop=4
set expandtab
set smarttab autoindent
set backspace=indent,eol,start
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set nobackup
set noswapfile
set encoding=utf-8
set fileencoding=utf-8
set nobomb
set termencoding=utf-8
set nowrap
set fileencodings=utf-8,iso-8859-15

"color scheme
set t_Co=256
colors jellybeans 
