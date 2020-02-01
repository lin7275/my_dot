let mapleader = ' '

" recursive search dir
path+=**
" enable syntax highlight
syntax enable
" The width of a hard tabstop measured in "spaces" 
set tabstop=4
" show number
set number
" show command in lower right corner
set showcmd
" turn on three filetype option
filetype indent on
" enable autocomplte menu
set wildmenu
" show matching brace
set showmatch
" incremental search as you type
set incsearch
" highlight search results
set hlsearch
" turn off highlight
nnoremap <leader><space> :nohlsearch<CR>
set number relativenumber

" load plugin
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdcommenter'
call plug#end()

# indent option
set tabstop=8     
set expandtab    
set shiftwidth=4  
set autoindent    
set smartindent   
set cindent     
