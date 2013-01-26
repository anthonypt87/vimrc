so ~/.vim/minimal_vimrc

if !isdirectory(expand("~/.vim/bundle/vundle/.git"))
	!git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
endif

" Vundle setup
set nocompatible
filetype off " Needs to be on for vim versions < 7.4.430 (https://github.com/gmarik/vundle/issues/176)
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Declare vundle bundles
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/AutoComplPop'
Bundle 'vim-scripts/YankRing.vim'

filetype plugin indent on " Required for vundle

" CtrlP Options
let g:ctrlp_map = '<leader>t'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_max_files = 200000
let g:ctrlp_clear_cache_on_exit = 0

" AutoComplPop Options
let g:acp_behaviorPythonOmniLength = -1

" Turn on Rainbow Parens by default
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
