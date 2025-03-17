" Support Functions
" ------------------------------------------------------------

let s:screen_width=split(system("$HOME/.local/bin/screen-size"), "x")[0]

function s:get_min_columns()
  if s:screen_width >= 2560
    return 192
  else
    return 96
  endif
endfunction

function s:get_max_columns()
  if s:screen_width >= 2560
    return float2nr(s:get_min_columns() * 1.5)
  else
    return s:get_min_columns() * 2
  endif
endfunction



" General Settings
" ------------------------------------------------------------

source ~/.vim/lightline.vim

set guifont=Sauce\ Code\ Powerline:h14
set background=dark
colors base16-ocean

set lines=999
let &columns=s:get_min_columns()

set number                          " show line numbers

set cursorline                      " highlight current line
set laststatus=2                    " show status bar

set guioptions-=T                   " remove toolbar
set guioptions-=r                   " remove right scrollbar
set guioptions-=L                   " remove left scrollbar

if exists('+colorcolumn')
  " colorcolumn will never color more than 256 columns,
  " so max out at column #336.
  let &colorcolumn=join(range(81,336),",")
endif



" Key Mappings
" ------------------------------------------------------------

" Toggle window size
nnoremap <Leader>- :call ToggleWindowSize()<CR>



" Functions
" ------------------------------------------------------------

function! ToggleWindowSize()
    if (&columns == s:get_max_columns())
        let &columns=s:get_min_columns()
    else
        let &columns=s:get_max_columns()
    endif
endfunction



" Additional GUI Settings
" ------------------------------------------------------------

if has("gui_gtk2")
    source ~/.vim/gui/gtk2.vim
elseif has("gui_macvim")
    source ~/.vim/gui/macvim.vim
endif
