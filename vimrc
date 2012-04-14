" Minimal vim settings without plugins/bundles
let mapleader='\'

" Basic settings
set number "sets numbers
set softtabstop=2
set shiftwidth=2
set tabstop=2
set autoindent
set ignorecase
set vb " turns off visual bell
set smartindent
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set hlsearch
set hidden
syntax on
colorscheme desert

" Status line
set laststatus=2
set statusline=
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%=                           " right align remainder
set statusline+=0x%-8B                       " character value
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position

" Keyboard shortcuts
set pastetoggle=<leader>,p
map <leader><leader> :set hls!<bar>set hls?<CR>
map <leader>p :set paste!<bar>set paste?<CR>

" Remap buffer movement
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
