set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

call plug#begin()
" NERDTree
Plug 'scrooloose/nerdtree'
" Git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Linting
Plug 'neomake/neomake'
Plug 'w0rp/ale'
" Comments
Plug 'tpope/vim-commentary'
" Search
Plug 'ctrlpvim/ctrlp.vim'
" Syntax
Plug 'sheerun/vim-polyglot'
Plug 'matthewbdaly/vim-filetype-settings'
" Themes
Plug 'nanotech/jellybeans.vim' , {'as': 'jellybeans'}
call plug#end()

source $HOME/.vimrc
source $HOME/.vim/dev.vim

