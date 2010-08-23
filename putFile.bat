echo off
echo Copying config files to %HOME%
cp _gvimrc _vimperatorrc _vimrc nsis.vim pythonConfig.vim %HOME%
set is64='%programfiles(x86)%'
if NOT "%is64%"=="" (
  echo Running 64 bits
  echo Copying plugin files to %programfiles(x86)%
  cp fuf.vim python_editing.vim sessionman.vim supertab.vba supertab.vim taglist.vim "%programfiles(x86)%\Vim\vimfiles\plugin"
) else (
  echo Running 32 bits
  echo Copying plugin files to %programfiles%
  cp fuf.vim python_editing.vim sessionman.vim supertab.vba supertab.vim taglist.vim "%programfiles%\Vim\vimfiles\plugin"
)
PAUSE
echo End
