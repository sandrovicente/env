syntax on
set ruler
set hlsearch
set mousehide
set number
set si
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set autoindent
set incsearch
set cindent
set vb t_vb=
colorscheme ron 
set statusline+=%F
set autoread
set laststatus=2
set backspace=2
set mouse=a
set hidden
set statusline=%F%m%r%h%w\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
nnoremap K :vimgrep <cword> /**/*

set runtimepath^=~/.vim/bundle/ctrlp.vim
nnoremap <C-B> :CtrlPBuffer<CR>
"nnoremap <Leader>vv :vimgrep <cword> ./**/* <CR>:cw<CR>

set runtimepath^=~/.vim/bundle/nerdtree
nnoremap <C-E> :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<cr>

source ~/.vim/syntax/cabal.vim
source ~/.vim/syntax/haskell.vim
"set runtimepath^=~/.vim/bundle/haskellmode-vim
autocmd BufNewFile,BufRead *.hs set syntax=haskell

set runtimepath^=~/.vim/bundle/rust.vim
autocmd BufNewFile,BufRead *.rs set syntax=rust

set runtimepath^=~/.vim/bundle/vim-fugitive

source ~/.vim/dev.vim
set noswapfile
