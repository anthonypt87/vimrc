set t_Co=256
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
" Bundle 'vim-scripts/AutoComplPop'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-fugitive'
Bundle 'flazz/vim-colorschemes'
Bundle 'tristen/vim-sparkup'
Bundle 'vim-scripts/closetag.vim'
Bundle 'vim-scripts/DetectIndent'
Bundle 'Raimondi/delimitMate'
Bundle 'vim-scripts/Gundo'
Bundle 'marijnh/tern_for_vim'
Bundle 'fatih/vim-go'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-obsession'
Plugin 'Valloric/YouCompleteMe'

filetype plugin indent on " Required for vundle

" CtrlP Options
let g:ctrlp_map = '<leader>t'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_max_files = 200000
let g:ctrlp_clear_cache_on_exit = 0
noremap <leader>b :CtrlPBuffer<CR>

" YankRing Options
noremap <leader>y :YRShow<CR>

" AutoComplPop Options
let g:acp_behaviorPythonOmniLength = -1

" Turn on Rainbow Parens by default
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Rainbow Parens colors
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['white',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3']
    \ ]

" Sparkup Options
let g:sparkupExecuteMapping = '<leader>e'

" Startup DetectIndent automatically
autocmd BufReadPost * :DetectIndent

" Faster ctrl p matcher
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
