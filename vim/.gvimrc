set number
set cursorline
set laststatus=2
set lines=999
set columns=96
set guioptions-=r
set guioptions-=L
let &colorcolumn=join(range(81,999),",")

set background=dark
colors badwolf

if (match(system("hostname"), "Corellia") != -1)
    set guifont=Sauce\ Code\ Powerline:h14
else
    set guifont=Sauce\ Code\ Powerline:h18
endif
