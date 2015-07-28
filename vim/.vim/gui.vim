source ~/.vim/lightline.vim

set guifont=Sauce\ Code\ Powerline:h14
set background=dark
colors base16-ocean

set lines=999
set columns=96

set number                          " show line numbers

set cursorline                      " highlight current line
set laststatus=2                    " show status bar

set guioptions-=T                   " remove toolbar
set guioptions-=r                   " remove right scrollbar
set guioptions-=L                   " remove left scrollbar

if exists('+colorcolumn')
    let &colorcolumn=join(range(81,999),",")
endif



if has("gui_gtk2")
    source ~/.vim/gui/gtk2.vim
elseif has("gui_macvim")
    source ~/.vim/gui/macvim.vim
endif
