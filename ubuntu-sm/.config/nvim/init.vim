set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc


call plug#begin()
Plug 'neovim/nvim-lsp'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete-lsp'
Plug 'ervandew/supertab'
Plug 'Chiel92/vim-autoformat'
Plug 'morhetz/gruvbox'
Plug 'ncm2/float-preview.nvim'
Plug 'tpope/vim-vinegar'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'cespare/vim-toml'

Plug 'neomake/neomake'
call plug#end()

" Basic configuration {{{

" Note: Neovim is always "nocompatible".

filetype plugin indent on
syntax on

set nobackup
set nowritebackup
set noswapfile
set hidden
set updatetime=300
set shortmess+=c
set signcolumn=yes
set novb
"set relativenumber
set hlsearch
set incsearch
set smartcase
set wildmode=full
set wildignore+=*/.git/*
set autoindent
set backspace=indent,eol,start
set expandtab
set foldlevelstart=20
set foldmethod=syntax
set linebreak
set mouse=a
set nowrap
set scrolloff=5
set shiftwidth=2 tabstop=2 softtabstop=2
set splitbelow splitright
set timeoutlen=300
set wrapmargin=0

" }}}

" Theming {{{

"set termguicolors
set background=dark
"colorscheme gruvbox
set guioptions=
highlight Normal guibg=None

" }}}

" Netrw {{{

let g:netrw_banner = 0
let g:netrw_liststyle = 1
let g:netrw_list_hide = netrw_gitignore#Hide() . ',' . &wildignore

" }}}

" General key bindings {{{

nnoremap <leader><space> :nohl<cr>

lua << EOF
local lspconfig = require'lspconfig'
lspconfig.rust_analyzer.setup({})
EOF

sign define LspDiagnosticsErrorSign text=✗ texthl=LspDiagnosticsError linehl= numhl=
sign define LspDiagnosticsWarningSign text=⚠ texthl=LspDiagnosticsWarning linehl= numhl=
sign define LspDiagnosticsInformationSign text=ℹ texthl=LspDiagnosticsInformation linehl= numhl=

" }}}

" FloatPreview {{{

function! DisableExtras()
  call nvim_win_set_option(g:float_preview#win, 'number', v:false)
  call nvim_win_set_option(g:float_preview#win, 'relativenumber', v:false)
  call nvim_win_set_option(g:float_preview#win, 'cursorline', v:false)
endfunction

autocmd User FloatPreviewWinOpen call DisableExtras()

let g:float_preview#docked = 1
set completeopt=menu

" python
let g:neomake_python_enabled_makers = ['pylint']
call neomake#configure#automake('nrwi', 500)
