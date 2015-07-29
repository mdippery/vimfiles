set guifont=Source\ Code\ Pro\ Medium\ 12

" Lines and columns weren't being set correctly
" (under CentOS 6/KDE4) unless the values were
" set explicitly; otherwise, Gvim takes on the
" dimensions of the terminal it was launched from.
set lines=53
set columns=144

set guioptions-=m           " remove menu



" Key Mappings
" ------------------------------------------------------------

" Paste/copy from/to system clipboard
nnoremap <Insert> "+p
inoremap <Insert> "+p
vnoremap <Insert> "+y

" Toggle window size
nnoremap <Leader>- :call ToggleWindowSize()<CR>



" Functions
" ------------------------------------------------------------

function! ToggleWindowSize()
    if (&columns == 192)
        set columns=144
    else
        set columns=192
    endif
endfunction
