" scripts that are not managed by Vundle

set hlsearch
set number
let mapleader=','

map T :ConqueTermTab bash<CR>
set mouse+=a


" for cscope begin ......................
if has("cscope") && filereadable("/usr/bin/cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
    " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
       cs add $CSCOPE_DB
   endif
   set csverb
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
map <C-g> :cs find g <C-R>=expand("<cword>")<CR>
map <C-h> :cs find c <C-R>=expand("<cword>")<CR>
" map <C-t> :cs find t <C-R>=expand("<cword>")<CR>
map <C-e> :cs find e <C-R>=expand("<cword>")<CR>
map <C-f> :cs find f <C-R>=expand("<cword>")<CR>
" map <C-i> :cs find i <C-R>=expand("<cword>")<CR>
map <C-d> :cs find d <C-R>=expand("<cword>")<CR>

" for cscope end ......................

" for disable wrap search
set nowrapscan

" config for status line begin ......................
" Always show the status line
set laststatus=2
" Show (partial) command in status line.
set showcmd
" Status line format:
" {buffer number}: {file name, relative path to the current working directory}{modified flag}{readonly flag}
" {help flag}{preview flag} [file type, encoding, format] [current line-total lines, current column][position percentage in file]
set statusline=%n:\ %f%m%r%h%w\ [%Y,%{&fileencoding},%{&fileformat}]\ [%l-%L,%v][%p%%]
" config for status line end ........................
