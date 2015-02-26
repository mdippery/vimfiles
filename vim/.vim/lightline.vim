let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ 'active': {
    \   'right': [ ['lineinfo'], ['percent'], ['filetype'] ],
    \ },
    \ 'component': {
    \   'readonly': '%{&readonly?"":""}',
    \ },
    \ 'component_function': {
    \   'mode': 'LLMode',
    \ },
    \ }

function! LLMode()
    let fname = expand('%:t')
    return fname == '__Tagbar__' ? 'Tagbar' :
        \ fname == 'ControlP' ? 'CtrlP' :
        \ lightline#mode() == 'NORMAL'  ? 'N' :
        \ lightline#mode() == 'INSERT'  ? 'I' :
        \ lightline#mode() == 'VISUAL'  ? 'V' :
        \ lightline#mode() == 'V-LINE'  ? 'V' :
        \ lightline#mode() == 'V-BLOCK' ? 'V' :
        \ lightline#mode() == 'REPLACE' ? 'R' : lightline#mode()
endfunction
