so ~/.vim/minimal_vimrc

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/AutoComplPop'

filetype plugin indent on

" CtrlP Options
let g:ctrlp_map = '<leader>t'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
set wildignore+=*.pyc
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
