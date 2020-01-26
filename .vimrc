set nocompatible
filetype off

filetype plugin indent on 
syntax enable
syntax on

set backspace=indent,eol,start
set clipboard=unnamedplus
set foldlevelstart=20
set tabstop=4               
set shiftwidth=4           
set softtabstop=4         
set autoindent              
set smartindent            
set expandtab            
set noswapfile

let mapleader=","

map <silent> <C-n> :tabnew<CR>
map <silent> <C-Left> :tabp<CR>
map <silent> <C-Right> :tabn<CR>
map <silent> <C-z> zA
map <silent> <C-_> <leader>c<Space>
map <silent> <leader>q :q!<CR>
map <silent> <leader>qa :qa!<CR>
map <silent> <leader>wq :wq<CR>
map <silent> <C-k> 5k
map <silent> <C-j> 5j
imap jk <Esc>
imap kj <Esc>
