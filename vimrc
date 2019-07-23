set t_Co=256
so /Users/anthony/.config/nvim/minimal_vimrc

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
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'davidhalter/jedi-vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-vinegar'
Bundle 'solarnz/thrift.vim'
Bundle 'vim-scripts/netrw.vim'
" Bundle 'Shougo/neocomplete.vim'
" Bundle 'othree/vim-autocomplpop'

" Track the engine.
Plugin 'honza/vim-snippets'
Plugin 'godoctor/godoctor.vim' " Some refactoring tools
Plugin 'scrooloose/nerdcommenter'
if has('nvim')
  Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plugin 'zchee/deoplete-go', {'build': {'unix': 'make'}}
  Plugin 'deoplete-plugins/deoplete-jedi'
  Plugin 'jodosha/vim-godebug' " Debugger integration via delve
  Plugin 'w0rp/ale'
  " Plug 'neomake/neomake'
  Plugin 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
  Plugin 'janko/vim-test'
endif

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
" let g:acp_behaviorPythonOmniLength = -1

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

" let g:jedi#completions_enabled = 0

map <Space>s <Plug>(easymotion-s)

set t_Co=256
set background=dark
if !has('gui_running')
  let g:solarized_termcolors=&t_Co
  let g:solarized_termtrans=1
endif

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|nagios'
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc']

" let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_types = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "gofmt"
let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']
let g:go_fmt_command = "goimports"
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
" we want to tell the syntastic module when to run
" we want to see code highlighting and checks when  we open a file
" but we don't care so much that it reruns when we close the file
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:go_list_type = "quickfix"

" let g:neocomplete#enable_at_startup = 1

" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_open_list = 1
let g:ale_keep_list_window_open = 0


let g:deoplete#enable_at_startup = 0
" deoplete
set completeopt=longest,menuone " auto complete setting
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns['default'] = '\h\w*'
let g:deoplete#omni#input_patterns = {}
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#align_class = 1
" let g:syntastic_debug = 1

" neomake
" autocmd BufWritePost * Neomake
" let g:neomake_error_sign   = {'text': '✖', 'texthl': 'NeomakeErrorSign'}
" let g:neomake_warning_sign = {'text': '∆', 'texthl': 'NeomakeWarningSign'}
" let g:neomake_message_sign = {'text': '➤', 'texthl': 'NeomakeMessageSign'}
" let g:neomake_info_sign    = {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}
" let g:neomake_go_enabled_makers = ['golint', 'govet']
" let g:neomake_go_gometalinter_maker = {
"   \ 'args': [
"   \   '--tests',
"   \   '--enable-gc',
"   \   '--concurrency=3',
"   \   '--fast',
"   \   '-D', 'aligncheck',
"   \   '-D', 'dupl',
"   \   '-D', 'gocyclo',
"   \   '-D', 'gotype',
"   \   '-E', 'errcheck',
"   \   '-E', 'misspell',
"   \   '-E', 'unused',
"   \   '%:p:h',
"   \ ],
"   \ 'append_file': 0,
"   \ 'errorformat':
"   \   '%E%f:%l:%c:%trror: %m,' .
"   \   '%W%f:%l:%c:%tarning: %m,' .
"   \   '%E%f:%l::%trror: %m,' .
"   \   '%W%f:%l::%tarning: %m'
"   \ }
" autocmd! BufWritePost,BufEnter * Neomake
" let g:neomake_open_list = 2
" let g:python2_host_prog = '/usr/local/bin/python'
" let g:python3_host_prog = '/usr/local/bin/python3'
let g:syntastic_python_checkers = ['python3']
let g:ale_python_flake8_executable = 'python3'
let g:ale_python_flake8_options = '-m flake8'
let test#strategy = "neovim"
" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
