set nocompatible
filetype off

" Commands to download vundle/install configured plugins:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" :PluginInstall
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

noremap <silent> <C-f> :NERDTreeToggle<CR>
noremap <silent> <C-n> :tabnew<CR>
noremap <silent> <C-Left> :tabp<CR>
noremap <silent> <C-Right> :tabn<CR>
noremap <silent> <C-z> zA
noremap <silent> <C-l> :PymodeLintAuto<CR>
noremap <silent> <C-_> <leader>c<Space>
noremap <silent> <leader>q :q!<CR>
noremap <silent> <leader>qa :qa!<CR>
noremap <silent> <leader>d :Gdiff<CR>
noremap <silent> <C-k> 5k
noremap <silent> <C-j> 5j
