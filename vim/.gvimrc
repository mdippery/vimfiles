set number
set cursorline
set laststatus=2
set lines=999
set columns=96
set guioptions-=r
set guioptions-=L
let &colorcolumn=join(range(81,999),",")

set guifont=Sauce\ Code\ Powerline:h14
set background=dark
colors badwolf

if (match(system("hostname"), "Coruscant") != -1)
    set columns=144
    set guifont=Sauce\ Code\ Powerline:h18
elseif (match(system("hostname"), "pivotal-guest") != -1)
    set columns=120
endif
