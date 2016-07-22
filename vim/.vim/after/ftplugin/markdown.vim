setlocal textwidth=78
setlocal formatoptions+=t

nnoremap <Leader>M :call SwitchToUnwrappedMarkdown()<CR>

function! SwitchToUnwrappedMarkdown()
    set textwidth=0
    nnoremap j gj
    nnoremap k gk
endfunction
