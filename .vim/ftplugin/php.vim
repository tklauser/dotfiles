" Mostly taken from
" http://www.schlitt.info/applications/blog/index.php?/archives/331-Comfortable-PHP-editing-with-VIM-3.html

" {{{ Settings

" Almost PEAR coding standard
set tabstop=2
set shiftwidth=2

" No autowrapping, PHP/HTML can have quite long lines :-/
set nowrap

" Auto indent after a {
set autoindent
set smartindent

" Correct indentation after opening a phpdocblock and automatic * on every
" line
set formatoptions=qroct

" }}} Settings

" The completion dictionary is provided by Rasmus:
" http://lerdorf.com/funclist.txt
set dictionary-=/home/tklauser/.php/funclist.txt dictionary+=/home/tklauser/.php/funclist.txt
" Use the dictionary completion
set complete-=k complete+=k
