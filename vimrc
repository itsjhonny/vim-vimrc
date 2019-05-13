syntax enable
set tabstop=4
set expandtab
set number
filetype indent on
set autoindent
set mouse=a


inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add plugins here

Plugin 'joshdick/onedark.vim'
Plugin 'Royal-Colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'dracula/vim'
Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }
call vundle#end()
filetype plugin indent on
set background=dark
colorscheme onedark

autocmd VimEnter * NERDTree

