" scripts that are not managed by Vundle

" Only run the script once
if exists("g:did_non_plugin_stuff")
  finish
endif
let g:did_non_plugin_stuff = 1

set hlsearch
set number
let mapleader=','

map T :ConqueTermTab bash<CR>
set mouse+=a

" for disable wrap search
set nowrapscan

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" for cscope begin
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" for cscope end


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" for status line begin
" Always show the status line
set laststatus=2
" Show (partial) command in status line.
set showcmd
" Status line format:
" {buffer number}: {file name, relative path to the current working directory}{modified flag}{readonly flag}
" {help flag}{preview flag} [file type, encoding, format] [current line-total lines, current column][position percentage in file]
set statusline=%n:\ %f%m%r%h%w\ [%Y,%{&fileencoding},%{&fileformat}]\ [%l-%L,%v][%p%%]

" This function toggles the 'fullscreen' mode. I sometimes need this, so I can
" just view my files, without all the 'clutter': line numbers, folding,
" command line, status line, etc.
let s:fullscreen_toggle = 0
function s:RD_Fullscreen ()
	if s:fullscreen_toggle == 0
		set cmdheight=1
		set number
		set laststatus=0
		set foldcolumn=0
		let s:fullscreen_toggle = 1
	else
		set cmdheight=2
		set number
		set laststatus=2
		set foldcolumn=4
		let s:fullscreen_toggle = 0
	endif
endfunction

" This adds the new Fullscreen command.
command Fullscreen call <SID>RD_Fullscreen()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" for status line end

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" for mouse invert begin
function! MouseInvert()
  let mouse_value = &mouse
  if mouse_value == "a"
    set mouse-=a
    set nonumber
    echom "mouse disabled"
  else
    set mouse+=a
    set number
    echom "mouse enabled"
  endif
endfunction

map mi :call MouseInvert()<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" for mouse invert end


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" for presenting begin
au FileType rst let b:presenting_slide_separator = '\v(^|\n)\~{4,}'
autocmd BufNewFile,BufReadPost *.markdown set filetype=markdown
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" for presenting end

" black theme
colo torte

" For PlantUML begin
" curl the jar from http://plantuml.com/ and put it under .oneenv
" ......
" set makeprg=java\ -jar\ c:\work\private\tools\plantuml\plantuml.jar
" map <F5> :make %<CR>
" For PlantUML end
