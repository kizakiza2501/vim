if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# 'C:\Users\Kizashi/vimfiles,C:\vim/vimfiles,C:\vim\vim81,C:\vim/vimfiles/after,C:\Users\Kizashi/vimfiles/after,C:\vim\cache\dein\repos\github.com\Shougo\dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['C:/vim/vimrc', 'C:/vim/conf/dein.toml', 'C:/vim/conf/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = 'C:/vim/cache/dein'
let g:dein#_runtime_path = 'C:/vim/cache/dein/.cache/vimrc/.dein'
let g:dein#_cache_path = 'C:/vim/cache/dein/.cache/vimrc'
let &runtimepath = 'C:\Users\Kizashi/vimfiles,C:\vim/vimfiles,C:/vim/cache/dein/repos/github.com/Shougo/dein.vim,C:/vim/cache/dein/.cache/vimrc/.dein,C:\vim\vim81,C:/vim/cache/dein/.cache/vimrc/.dein/after,C:\vim/vimfiles/after,C:\Users\Kizashi/vimfiles/after,C:\vim\cache\dein\repos\github.com\Shougo\dein.vim'
let g:lightline = { 'colorscheme': 'wombat', 'mode_map': {'c': 'NORMAL'}, 'active': {   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ] }, 'component_function': {   'modified': 'LightlineModified',   'readonly': 'LightlineReadonly',   'fugitive': 'LightlineFugitive',   'filename': 'LightlineFilename',   'fileformat': 'LightlineFileformat',   'filetype': 'LightlineFiletype',   'fileencoding': 'LightlineFileencoding',   'mode': 'LightlineMode' } }
function! LightlineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction
function! LightlineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? 'x' : ''
endfunction
function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') . (&ft == 'vimfiler' ? vimfiler#get_status_string() :  &ft == 'unite' ? unite#get_status_string() :  &ft == 'vimshell' ? vimshell#get_status_string() : '' != expand('%:t') ? expand('%:t') : '[No Name]') . ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction
function! LightlineFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
    return fugitive#head()
  else
    return ''
  endif
endfunction
function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction
function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction
function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction
function! LightlineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction
let g:ale_sign_column_always = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_linters = {'python': ['flake8'],}
let g:ale_sign_error = '!!'
let g:ale_sign_warning = '=='
