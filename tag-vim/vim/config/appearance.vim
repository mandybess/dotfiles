set colorcolumn=80                " Highlight the 80 character column
set relativenumber                " Use relative line numbers
set number                        " Also show the current line number
set cursorline                    " Highlight the current line

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Changes the cursor from a block to a cursor depending if in insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7" 
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
