" some general options
  set ai    " autoindent
  set et    " expandtab
  set ts=2  " tabstop
  set tw=85 " textwidth

" compile tex-files with latex
  set makeprg=latex\ %

" Inserting pairs of quotes:
  imap  Y"  ``''<Left><Left>

" Some mappings for often used commands
  iab ,b \begin{}<Esc>i
  iab ,e \end{}<Esc>i

" A mapping for more effective use of latex compiling
  map <F7> : call CompileRunPDF()<CR>
  func! CompileRunPDF()
  exec "w"
  exec "!latex % && dvipdf %<.dvi && xpdf %<.pdf"
  exec "i"
  endfunc

