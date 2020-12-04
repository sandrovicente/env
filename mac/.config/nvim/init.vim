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
" Rust
Plug 'neovim/nvim-lsp'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete-lsp'
Plug 'ervandew/supertab'
Plug 'Chiel92/vim-autoformat'

call plug#end()

nnoremap <leader><space> :nohl<cr>

" rust
lua << EOF
local lspconfig = require'lspconfig'
lspconfig.rust_analyzer.setup({})
EOF

sign define LspDiagnosticsErrorSign text=✗ texthl=LspDiagnosticsError linehl= numhl=
sign define LspDiagnosticsWarningSign text=⚠ texthl=LspDiagnosticsWarning linehl= numhl=
sign define LspDiagnosticsInformationSign text=ℹ texthl=LspDiagnosticsInformation linehl= numhl=

" python
let g:neomake_python_enabled_makers = ['pylint']
call neomake#configure#automake('nrwi', 500)

" legacy vim integration
source $HOME/.vimrc
source $HOME/.vim/dev.vim

