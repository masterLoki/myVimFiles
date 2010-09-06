"Basic vim config>{
set number
set ruler
set nobackup
set lazyredraw
set tabstop=2
set shiftwidth=2
set expandtab
set autochdir
set mouse=a
set smartindent
set autoindent
set nocompatible
set backspace=2
set ignorecase
set smartcase
set hidden
set enc=utf-8
syntax on
filetype plugin indent on
"}

"Test config {
set wildmenu
set wildignore=*pyc,*exe,*dll
set wildmode=list:longest
"}

"Tabs {
map	<C-TAB>		gt
map	<C-S-TAB>	gT
"}

"Buffers Mappings {
"map <CR>  <C-]>
map j     gj
map k     gk
"}

"Windows Mappings {
map <C-h>   :wincmd h<CR>
map <C-j>   :wincmd j<CR>
map <C-k>   :wincmd k<CR>
map <C-l>   :wincmd l<CR>
map <A-S-k> <C-w>-
map <A-S-j> <C-w>+
map <A-S-h> <C-w><
map <A-S-l> <C-w>>
"}

"Filetype assoc{
autocmd BufNewFile,BufRead,BufEnter *py set omnifunc=pythoncomplete#Complete
autocmd BufNewFile,BufRead,BufEnter *py so ~/myVimFiles/pythonConfig.vim
autocmd BufNewFile,BufRead,BufEnter *nsi so ~/myVimFiles/nsis.vim
"}

"Other Stuff {
map <F2>  :!sh -login -i<CR><CR>
map <F3>  :lvimgrep 
map <F4>  :TlistToggle<CR>
imap <F2>  <ESC>:!sh -login -i<CR><CR>
imap <F3>  <ESC>:lvimgrep 
imap <F4>  :TlistToggle<CR>
imap <C-Space>  <C-x><C-o>
"}
"
"MiniBufExpl{
let g:miniBufExplModSelTarget = 1
let g:miniBufExplWinFixHeight = 1
let g:miniBufExplWinMaxSize = 1
map <F5> :FufBuffer<CR>
imap <F5> <Esc>:FufBuffer<CR>
map <F6> :lw<CR>
imap <F6> <Esc>:lw<CR>
"}

"Folds {
set foldenable
set foldmarker={,}
set foldmethod=marker
set foldlevel=100
function SimpleFoldText() "{
  return getline(v:foldstart).' '
endfunction "}
set foldtext=SimpleFoldText()
"}

"Languge settings {
map	<F7>  :setlocal spell spelllang=es<CR>
map	<F8>  :setlocal spell spelllang=en<CR>
"}
