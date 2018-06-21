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
colorscheme desert 
set statusline+=%F
set autoread
set laststatus=2
set backspace=2
set mouse=a
set hidden
set statusline=%F%m%r%h%w\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
nnoremap K :vimgrep <cword> /**/*
nnoremap P "*p

set runtimepath^=~/.vim/bundle/ctrlp.vim
nnoremap <C-B> :CtrlPBuffer<CR>
let g:ctrlp_user_command = 'find %s | grep -v -P "/\.\w"'
"nnoremap <Leader>vv :vimgrep <cword> ./**/* <CR>:cw<CR>

set runtimepath^=~/.vim/bundle/nerdtree
nnoremap <C-E> :NERDTreeToggle<CR>
