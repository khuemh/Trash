" Vundle Plugins Setting
set nocompatible     
filetype off   
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'
" Autocomplete Python
let g:ycm_python_interpreter_path = '~/pyenv/bin/python3.6'

call vundle#end()            " required
filetype plugin indent on    " required


" Setting
set number
set tabstop=4
set smartindent
set expandtab
set laststatus=2

syntax on 

colorscheme jellybeans 


" Keys Mapping
map <C-n> :NERDTreeToggle<CR>
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap { {}<Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i
inore jj <Esc>
