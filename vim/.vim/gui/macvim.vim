""" Disable Mac keyboard navigation shortcuts
let macvim_skip_cmd_opt_movement=1



" Key Mappings
" ------------------------------------------------------------

" Toggle window size
nnoremap <Leader>- :call ToggleWindowSize()<CR>



" Functions
" ------------------------------------------------------------

function! ToggleWindowSize()
    if (&columns == 144)
        set columns=96
    else
        set columns=144
    endif
endfunction
