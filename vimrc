so ~/.vim/minimal_vimrc

" Vundle setup
set nocompatible
" filetype off " Needs to be off for vim versions < 7.4.430 (https://github.com/gmarik/vundle/issues/176)
syntax on
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Declare vundle bundles
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/AutoComplPop'

" CtrlP Options
let g:ctrlp_map = '<leader>t'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_max_files = 200000

