syntax on
set hlsearch
set mousehide
set number
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set si 
set shiftwidth=4
"set statusline+=%F
colorscheme desert 
set autoread
set autoindent
set guifont=Monospace\ 9
"set statusline=%F%m%r%h%w\ [%{&ff}\ %Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
set incsearch
set mouse=a
set hidden

source ~/.vim/dev.vim

set runtimepath^=~/.vim/bundle/ctrlp.vim
nnoremap <C-@> :CtrlPBuffer<CR>
"nnoremap <Leader>vv :vimgrep <cword> ./**/* <CR>:cw<CR>

set runtimepath^=~/.vim/bundle/vim-airline
let g:airline#extensions#tabline#enabled = 1

set runtimepath^=~/.vim/bundle/nerdtree
nnoremap <C-b> :NERDTreeToggle<CR>

set runtimepath^=~/.vim/bundle/vim-fugitive
nnoremap K :Ggrep <cword> <CR><CR>:cw<CR>
