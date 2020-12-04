syntax on
set hlsearch
set mousehide
set number
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set si 
set autoread
set autoindent
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h9:cANSI
  endif
endif
colorscheme desert
set statusline=%F%m%r%h%w\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
set backspace=2
set incsearch
set mouse=a
set hidden
" remove toolbar from 'go' (guioptions)
set go-=T

set runtimepath^=~/.vim/bundle/rust.vim
autocmd BufNewFile,BufRead *.rs set syntax=rust

set runtimepath^=~/.vim/bundle/ctrlp.vim
nnoremap <C-b> :CtrlPBuffer<CR>
"nnoremap <Leader>vv :vimgrep <cword> ./**/* <CR>:cw<CR>

set runtimepath^=~/.vim/bundle/nerdtree
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

set runtimepath^=~/.vim/bundle/haskellmode-vim
set runtimepath^=~/.vim/bundle/vim-fugitive

source ~/.vim/dev.vim
set noswapfile
