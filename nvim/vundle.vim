filetype off                   " required!

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin(expand('$HOME/.config/nvim/bundle', 1))

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" == Language support ==
Bundle 'vim-ruby/vim-ruby'
" Improved Rails support
Plugin 'tpope/vim-rails'
" Support for templates and CSS/JS
Plugin 'slim-template/vim-slim'
Plugin 'kchmck/vim-coffee-script'
" HAML + SASS
Plugin 'tpope/vim-haml'

" == Syntax highlightning ==
" Dockerfile
Plugin 'ekalinin/Dockerfile.vim'

" == Insert support ==
" Edit reoccurring words at once as in sublime
Plugin 'terryma/vim-multiple-cursors'
" Insert and delete matching brackets and quotes
Plugin 'Raimondi/delimitMate'
" Insert closing end after def, if etc
Plugin 'tpope/vim-endwise'
" Add/removes comments
Plugin 'tomtom/tcomment_vim'

" == Other additions ==
" The solarized theme
Plugin 'altercation/vim-colors-solarized'
" Use git inside of vim
Plugin 'tpope/vim-fugitive'
" Show signs for git
Plugin 'airblade/vim-gitgutter'
" File search
Plugin 'kien/ctrlp.vim'
" New powerline
Plugin 'bling/vim-airline'

" Airline theme
Plugin 'paranoida/vim-airlineish'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required