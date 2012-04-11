set nocompatible    " be iMproved

if !isdirectory(expand("~/.vim/bundle/vundle/.git"))
    !git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
endif

filetype plugin indent on     " required!

set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" original repos on github
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'mileszs/ack.vim'
Bundle 'abudden/TagHighlight'

" non github repos
Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on     " required!

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
