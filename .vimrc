set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'python-mode/python-mode'
call vundle#end()

filetype plugin indent on 
syntax enable
syntax on
autocmd vimenter * NERDTree

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
let g:pymode_python = 'python3'
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
let g:pymode_run = 1
let g:pymode_run_key = '<leader>r'
let g:pymode_indent = 1
let g:pymode_line = 0
let g:pymode_lint = 1
let g:pymode_lint_async = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_checkers = ['pyflakes','pep8','mccabe']
let g:pymode_lint_message = 1
let g:pymode_lint_signs = 1
let g:pymode_rope = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_completion_on_dot = 1
let g:pymode_rope_rename_bind = '<C-S-r>'

map <silent> <C-f> :NERDTreeToggle<CR>
map <silent> <C-n> :tabnew<CR>
map <silent> <C-Left> :tabp<CR>
map <silent> <C-Right> :tabn<CR>
map <silent> <C-z> zA
map <silent> <C-l> :PymodeLintAuto<CR>
map <silent> <C-_> <leader>c<Space>
map <silent> <leader>q :q!<CR>
map <silent> <leader>qa :qa!<CR>
map <silent> <leader>d :Gdiff<CR>
map <silent> <C-k> 5k
map <silent> <C-j> 5j
