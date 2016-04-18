" Vim Configuration
"
" Copyright (c) 2015 - 2016 Pluto and Bacon

" Colors
colorscheme badwolf    
syntax enable          " enable syntax processing

" Spaces & Tabs
set tabstop=2          " number of visual spaces per tab
set softtabstop=2      " number of spaces in tab when editing
set expandtab          " tabs are spaces

" UI Config
set number             " show line numbers
set showcmd            " show commandin the bottom bar
set cursorline         " highlight the current line
filetype indent on     " load filetype-specific indent files
set wildmenu           " visual autocomplete for command menu
set lazyredraw         " redraw only when we need to
set showmatch          " highlight matching [{()}]

" Searching
set incsearch          " search as characters are entered
set hlsearch           " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable         " enable folding
set foldlevelstart=10  " open most folds by default
set foldnestmax=10     " 10 nested fold max
nnoremap <space> za    " space open/closes folds
set foldmethod=indent  " fold based on indent level

" Launch Config
" use pathogen
call pathogen#infect()
