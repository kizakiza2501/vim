let g:python3_host_prog = 'C:\Users\Kizashi\Anaconda3\python'
let g:python_host_prog = 'C:\Users\Kizashi\Anaconda3\python'

"encoding
set encoding=cp932
scriptencoding utf-8 
set fileencoding=utf-8 
set fileencodings=utf-8

set binary
set hlsearch
set ignorecase
set smartcase
set wrapscan
set noswapfile
set number
set cindent
set formatoptions+=mm
set title
set clipboard+=unnamed
set clipboard+=autoselect
set fileformat=dos                      " 基本ファイルフォーマット
set fileformats=dos,unix,mac  
set ambiwidth=double
set cursorline
set cursorcolumn
set wildmenu
set nowrap
set laststatus=2

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=C:\vim\cache\dein\repos\github.com\Shougo\dein.vim

" Required:
if dein#load_state('C:\vim\cache\dein')
  call dein#begin('C:\vim\cache\dein')

  " Let dein manage dein
  " Required:
  call dein#add('C:\vim\cache\dein\repos\github.com\Shougo\dein.vim')
  call dein#load_toml('C:\vim\conf\dein.toml', {'lazy': 0})
  call dein#load_toml('C:\vim\conf\dein_lazy.toml', {'lazy': 1})

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

syntax on
colorscheme desert
