set number
set cursorline
set columns=96
set guioptions-=r
set guioptions-=L
let &colorcolumn=join(range(81,999),",")

set background=dark
colors solarized

if (match(system("hostname"), "Corellia") != -1)
    set lines=38
    set guifont=Sauce\ Code\ Powerline:h14
else
    set lines=64
    set guifont=Sauce\ Code\ Powerline:h18
endif
