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

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'neomake/neomake'
call plug#end()

" Basic configuration {{{

" Note: Neovim is always "nocompatible".

filetype plugin indent on

"set termguicolors
set background=dark
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

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" python
let g:neomake_python_enabled_makers = ['pylint']
call neomake#configure#automake('nrwi', 500)
