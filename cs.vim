"PHP config
if !exists("g:csPath")
  let g:addPath = 1
  let $PATH=$PATH.';C:\Windows\Microsoft.NET\Framework\v4.0.30319\'
endif 

function! MakeThisUrl()
  let s:url='http://localhost/'
  let s:url=s:url. expand('%')
  return s:url
endfunction

function! MakeCustomUrl()
  let s:url='http://localhost/'
  let s:url=s:url. expand('%:p')
  return s:url
endfunction


map <F9>  :up<CR>:execute ":!firefox -new-tab ".MakeThisUrl()<CR>
map <F10>  execute ":!firefox -new-tab ".MakeCustomUrl()
imap <F9>  <Esc>:up<CR>:execute ":!firefox -new-tab ".MakeThisUrl()<CR>
imap <F10>  <Esc>execute ":!firefox -new-tab ".MakeCustomUrl()

