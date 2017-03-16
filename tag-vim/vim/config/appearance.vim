set colorcolumn=+1                " Highlight (textwidth +1) character column
set relativenumber                " Use relative line numbers
set number                        " Also show the current line number
set cursorline                    " Highlight the current line
set textwidth=80                  " Force the cursor onto a new line after 80 characters

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Set the cursor to a vertical line in insert mode
" and a solid block in command mode
autocmd InsertEnter * : silent exec "!printf '\033]50;CursorShape=1\x7'" | exec ":redraw!"
autocmd InsertLeave * : silent exec "!printf '\033]50;CursorShape=0\x7'" | exec ":redraw!"

" upon hitting escape to change modes,
" send successive move-left and move-right
" commands to immediately redraw the cursor
inoremap <special> <Esc> <Esc>hl

