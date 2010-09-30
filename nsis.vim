"NSIS config

if !exists("g:outName")
  let g:outName=input("Input name of out file :: ")
endif

map <F9>   :w<CR>:!makensis %<CR><CR>
map <F10>  :exec ":!".g:outName<CR><CR>
map <F11>  :let g:outName='
imap <F9>   <Esc>:w<CR>:!makensis %<CR><CR>
imap <F10>  <Esc>:exec ":!".g:outName<CR><CR>
imap <F11>  <Esc>:let g:outName='
