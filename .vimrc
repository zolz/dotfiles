set nocompatible    " be iMproved

"  ---------------------------------------------------------------------------
"  Plugins
"  ---------------------------------------------------------------------------

silent! runtime bundles.vim

"  ---------------------------------------------------------------------------
"  Misc
"  ---------------------------------------------------------------------------

set encoding=utf-8

"colorscheme zenburn 
"colorscheme wombat
"colorscheme solarized
colorscheme desert

" Incremental search
set incsearch

" Ignore case in search
set ignorecase

" Automaticaly switch to case sensitive if search pattern contains 
" upper case letters
set smartcase

" Misc
set nowrap
"set textwidth=79
"set colorcolumn=80
set cursorline

" Change colour of statusline in insert mode
"au InsertEnter * hi StatusLine ctermbg=DarkBlue
"au InsertLeave * hi StatusLine ctermfg=Black ctermbg=White

" Ignore these files in searches
set wildignore+=*.o,*.obj,.git,build_out

" Tabs instead of spaces
set tabstop=4
set smarttab
set shiftwidth=4
set autoindent
set expandtab
"set listchars=eol:$,tab:→\ ,trail:·
"set listchars=tab:→\ ,trail:·
set listchars=tab:\|\¬,trail:·,extends:>,precedes:<
set list
set backspace=start,indent
autocmd FileType make     set noexpandtab

" Line numbers, syntax highlight
"set number
set ruler
set hlsearch
syntax on

" Switch to alternate file
map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr>

" Search in files
map <C-F> :Ack --cc --cpp <cword>

" Navigate compilation errors and search results
map <F4> :cn<cr>
map <S-F4> :cp<cr>

" Navigate bookmarks
map <C-S-F2> :ToggleBookmark<cr>
map <F2> :NextBookmark<cr>
map <S-F2> :PreviousBookmark<cr>

" Search
map <F3> n
map <S-F3> N

" Copy/Paste
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-V> "+gP
vmap <C-C> "+y

" Toggle NERD tree
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

" Change to the directory of the currently open file
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" Command-T
let g:CommandTMaxFiles=30000

