"PHP config
if !exists("g:addPath")
  let g:addPath = 1
  let $PATH=$PATH.';C:\Program Files\Mozilla Firefox'
endif 

function! MakeThisUrl()
  let s:url='http://localhost/'
  let s:url=s:url. expand('%')
  exec ':!
endfunction

function! MakeCustomUrl()
  let s:url='http://localhost/'
  let s:url=s:url. expand('%:p')
  return s:url
endfunction


map <F9>  :w<CR>:!firefox -new-tab MakeThisUrl()<CR>
map <F10>  :!firefox -new-tab call MakeCustomUrl()
imap <F9>  <Esc>:w<CR>:!firefox -new-tab MakeThisUrl()<CR><CR>
imap <F10>  <Esc>:!firefox -new-tab call MakeCustomUrl()

