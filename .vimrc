" $Id: vimrc,v 1.32 2007/02/10 18:58:51 tklauser Exp $

" {{{ General settings
set nocompatible	" Forget about (N)VI
set noerrorbells	" No annoying bells
set vb t_vb=

" Don't highlight search results
" set nohlsearch

" Type-ahead find
set incsearch

" Indent of 8, but no spaces
set shiftwidth=8
set tabstop=8

" Allow backspacing over indentation, end-of-line and start-of-line
set backspace=2

" smart autoindenting
set smartindent

" Paste toggle (a.k.a set paste/set nopaste)
set pastetoggle=<F11>

" Enable folding by fold markers
set foldmethod=marker

" Wrap line longer than the display
"set wrap
" Textwidth of 80 (Standard terminal)
set tw=80

" Number of undo operations to store
set undolevels=50

set laststatus=2	" Always show the statusline
set ruler		" Display ruler with cursor positions

"set cursorline		" Highlight the cursor line and column

" Buffer, filename, line, total lines, column, ASCII value
"set statusline=[%n]\ %f\ %m\ %l/%L,%c\ ASCII:\ %3b

set showmode

set backupcopy=auto,breakhardlink

filetype on		" Enable filetype detection
filetype indent on	" Enable filetype specific indenting
filetype plugin on	" Enable filetype specific plugins

au FileType c set cindent

let g:git_diff_spawn_mode=2

" }}}
" {{{ Colors and fonts

set background=dark
colorscheme solarized

" Syntax highlighting
if &t_Co > 2 || has("gui_running")
	syntax on
endif

" Highlight trailing whitespaces
let c_space_errors=1
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" }}}
" {{{ Completion
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" }}}
" {{{ Mappings
let mapleader=","

" Line numbering toggle
nmap <C-x>n :set invnumber<CR>
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

map <C-x>s ^iSigned-off-by: Tobias Klauser <<C-r>=$GIT_AUTHOR_EMAIL<CR>><ESC>^
map! <C-x>s Signed-off-by: Tobias Klauser <<C-r>=$GIT_AUTHOR_EMAIL<CR>><CR>

map <C-x>a ^iAcked-by: Tobias Klauser <<C-r>=$GIT_AUTHOR_EMAIL<CR>><ESC>^
map! <C-x>a Acked-by: Tobias Klauser <<C-r>=$GIT_AUTHOR_EMAIL<CR>><CR>

map <C-x>y ^iCopyright (C) <C-R>=strftime("%Y")<CR> Tobias Klauser <tklauser@distanz.ch><CR><ESC>^
map! <C-x>y Copyright (C) <C-R>=strftime("%Y")<CR> Tobias Klauser <tklauser@distanz.ch><CR>

map <C-x>c i<C-R>=strftime("%F %R")<CR> Tobias Klauser <tklauser@distanz.ch><CR><TAB>* <ESC>
map! <C-x>c <C-R>=strftime("%F %R")<CR> Tobias Klauser <tklauser@distanz.ch><CR><TAB>* 

map <C-x>f ^iFrom: Tobias Klauser <tklauser@distanz.ch><CR><ESC>^
map! <C-x>f From: Tobias Klauser <tklauser@distanz.ch><CR>

map <F9> :let &background = ( &background == "dark" ? "light" : "dark" )<CR>
map <F10> <ESC>:! make<CR>

map! <C-x><SPACE> &nbsp;

" Remove all trailing whitespaces in file
map <C-x>w :%s/\s\+$//<CR>^
map! <C-x>w <ESC>:%s/\s\+$//<CR>

" Remove Mac/DOS line-breaks
map <C-x>l :%s///<CR>^
map! <C-x>l <ESC>:%s///<CR>

" Navigate non-breaking lines more easily
" from http://zinformatik.de/tipps-tricks/vim-tipps/einige-tipps-und-tricks-fur-vim/
noremap <C-J> gj
noremap <C-K> gk

" Thanks mikap! http://michael-prokop.at/computer/config/.vimrc
map !f !perl -MText::Autoformat -e'autoformat'
map ;0 <ESC>:'<,'>!boxes
map ;1 <ESC>:'<,'>!boxes -d boxquote
map ;2 <ESC>:'<,'>!boxes -d peek -a c -s 40x5
map ;3 <ESC>:'<,'>!boxes -d c-cmt
map ;4 <ESC>:'<,'>!boxes -d dog -a c
map ;5 <ESC>:'<,'>!boxes -d simple -a jr
map ;6 <ESC>:'<,'>!boxes -d headline

map <Leader>hon :%!xxd<CR>
map <Leader>hof :%!xxd -r<CR>

" delete the text until start of the mail signature with ,k
map <Leader>k d/^-- $<CR>

" line numbering
map <Leader>ln :%s/^/\=line('.')/<CR><ESC>

" add a comment
map <Leader>mkc i/*  */<Left><Left><Left>

" greet to the person you write a mail
map <Leader>a  G/^\* /e+1<CR>ye1G}oHallo <c-r>",<cr><ESC>

" }}}
" {{{ Abbrevations
ab mfg Mit freundlichen Grüssen
" }}}
" {{{ VIM LaTeX
let g:Imap_UsePlaceHolders = 0
" }}}
" {{{ VIM VHDL
" for taglist
let g:tlist_vhdl_settings = 'vhdl;d:package declarations;b:package bodies;e:entities;a:architecture specifications;t:type declarations;p:processes;f:functions;m:port maps;r:procedures'
nnoremap <silent> <F8> :TlistToggle<CR>
" }}}
" {{{ Automatically create C header file skeletons
augroup c
	autocmd BufNewFile *.h :0r! mkheader.py -s <afile>
augroup END
" }}}
