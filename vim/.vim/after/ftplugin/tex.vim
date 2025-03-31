setlocal textwidth=78
setlocal formatoptions+=t

command Wc !wc -w %
cnoreabbrev wc Wc
