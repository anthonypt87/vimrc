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
Bundle 'vim-scripts/L9'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-fugitive'
Bundle 'flazz/vim-colorschemes'
Bundle 'tristen/vim-sparkup'
Bundle 'vim-scripts/closetag.vim'
Bundle 'vim-scripts/DetectIndent'
Bundle 'Raimondi/delimitMate'
Bundle 'vim-scripts/Gundo'
" Bundle 'marijnh/tern_for_vim'
Bundle 'fatih/vim-go'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-obsession'
Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-vinegar'
Bundle 'solarnz/thrift.vim'
" Bundle 'othree/vim-autocomplpop'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<leader>f"
let g:UltiSnipsJumpForwardTrigger="<leader>f"
let g:UltiSnipsJumpBackwardTrigger="<leader>x"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

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

let g:jedi#completions_enabled = 0

map <Space>s <Plug>(easymotion-s)

set t_Co=256
set background=dark
if !has('gui_running')
  let g:solarized_termcolors=&t_Co
  let g:solarized_termtrans=1
endif

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|nagios'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
