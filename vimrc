execute pathogen#infect()
syntax on
filetype plugin indent on

set modeline

if has('gui_running')
	set background=light
else
	set background=dark
endif

let g:solarized_termcolors=256
colorscheme solarized

"" start nerd tree if no file opened
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"" close vim if nerdtree is the only window left
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"" airline configuration
set laststatus=2
let g:airline_powerline_fonts = 1
set noshowmode
let g:airline_theme='solarized'


" remove trailing whitespaces..
autocmd FileType c,cpp,python,sh autocmd BufWritePre <buffer> :%s/\s\+$//e

" Unbind the cursor keys in insert, normal and visual modes.
"map <up> :echoerr "Stop being stupid"<CR>
"map <down> :echoerr "Stop being stupid"<CR>
"map <right> :echoerr "Stop being stupid"<CR>
"map <left> :echoerr "Stop being stupid"<CR>


"" keymaps
map <C-n> :NERDTreeToggle<CR>
