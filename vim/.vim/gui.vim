let s:screen_width = str2nr(split(system("$HOME/.local/bin/screen-size"), "x")[0])
let s:min_columns = s:screen_width >= 2560 ? 192 : 96
let s:max_columns = s:screen_width >= 2560 ? float2nr(s:min_columns * 1.5) : s:min_columns * 2

source ~/.vim/lightline.vim

set guifont=Sauce\ Code\ Powerline:h14
set background=dark
colors base16-ocean

set lines=999
let &columns=s:min_columns

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
    let &columns = &columns == s:max_columns ? s:min_columns : s:max_columns
endfunction



" Additional GUI Settings
" ------------------------------------------------------------

if has("gui_gtk2")
    source ~/.vim/gui/gtk2.vim
elseif has("gui_macvim")
    source ~/.vim/gui/macvim.vim
endif
