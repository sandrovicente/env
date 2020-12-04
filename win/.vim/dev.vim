" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

"unnecessary white space
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.cpp,*.cc,*.hpp,*.c,*.h match BadWhitespace /\s\+$/ 

"prompt delete buffer
:nnoremap <leader>lsd :ls<cr>:bd<space>

:vnoremap <leader>y "+y
:nnoremap <leader>p "+p
:nnoremap <leader>P "+P

:nnoremap <leader>r yiw:s/\<<C-R>"\>//gc<left><left><left>
:nnoremap <leader>R yiW:s/\<<C-R>"\>//gc<left><left><left>
:vnoremap <C-R> "hy:s/<C-R>h//gc<left><left><left>

