"Python config
"

if !exists("g:pythonMain")
  let g:pythonMain=input("Input python start File -> ")
endif

function! RenameMain()
  let g:pythonMain=input("Input python start File -> ")
endfunction

map <F8> :call RenameMain()<CR> 
map <F9>  :up<CR>:execute "!python ".g:pythonMain<CR><CR>
map <F10> :up<CR>:!python -OO % py2exe<CR><CR>
map <F11> :up<CR>:!python % <CR><CR>
imap <F8> <Esc>:call RenameMain()<CR>
imap <F9>  <Esc>:up<CR>:execute "!python ".g:pythonMain<CR><CR>
imap <F10> <Esc>:up<CR>:!python -OO % py2exe<CR><CR>
imap <F11> <Esc>:up<CR>:!python % <CR><CR>
