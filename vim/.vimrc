source ~/.vim/vundle.vim

syntax on
filetype plugin indent on

set vb                              " use visual bell
set nowrap                          " disable line wrapping
set hidden                          " hides buffers instead of closing them
set laststatus=0                    " disable status line

set directory=$HOME/.vim/swap       " set swap directory
set backupdir=$HOME/.vim/backup     " set backup directory
set noswapfile                      " disable swap file creation
set nobackup                        " disable backup creation
set nowritebackup                   " disable atomic saves

set autoread                        " auto reload externally-edited files

set tabstop=8                       " draw tabs with 8 spaces
set softtabstop=4                   " set soft tab of 4 spaces
set shiftwidth=4                    " use 4 spaces for auto-indents
set expandtab                       " use spaces instead of tabs
set autoindent                      " autoindent code
set shiftround                      " indent to next tab stop multiple

set showmatch                       " show matching brackets
set tags+=.tags                     " point ctags to ./.tags file

set splitbelow                      " open horizontal split below current
set splitright                      " open vertical split to right of current



" Key Mappings
" ------------------------------------------------------------

" jj to enter normal mode from insert mode
inoremap jj <Esc>

" Tap space to enter commands
nnoremap <Space> :

" yank to end of line
nnoremap Y y$

" K to insert a new line
nnoremap K r<CR><Esc>

" Keep selection region when indenting
vnoremap < <gv
vnoremap > >gv

" Remove search highlighting (until next search)
nnoremap <silent> <Esc> :noh<CR>

" Toggle between relative and absolute numbers
nnoremap <C-n> :call LineNumberToggle()<CR>

" Improved split creation/navigation
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" Improved buffer navigation
nnoremap H :bn<CR>
nnoremap L :bp<CR>
nnoremap Q :b#<CR>
nnoremap ; :ls<CR>:b
nnoremap <Leader>w :bd<CR>

" vim-operator-surround mappings
nmap <silent> Sa <Plug>(operator-surround-append)
nmap <silent> Sd <Plug>(operator-surround-delete)
nmap <silent> Sr <Plug>(operator-surround-replace)



" Functions
" ------------------------------------------------------------

if exists('+relativenumber')
    function! LineNumberToggle()
        if (&relativenumber == 1)
            set norelativenumber
            set number
        else
            set nonumber
            set relativenumber
        endif
    endfunc
endif



" GUI Settings
" ------------------------------------------------------------

if has("gui_running")
    source ~/.vim/lightline.vim

    set lines=999
    set columns=96

    if exists('+colorcolumn')
        let &colorcolumn=join(range(81,999),",")
    endif

    set number                      " show line numbers

    set cursorline                  " highlight current line
    set laststatus=2                " show status bar

    set guioptions-=T               " remove toolbar
    set guioptions-=r               " remove right scrollbar
    set guioptions-=L               " remove left scrollbar

    set guifont=Sauce\ Code\ Powerline:h14
    set background=dark
    colors badwolf
endif

if has("gui_gtk2")
    " Lines and columns weren't being set correctly
    " (under CentOS 6/KDE4) unless the values were
    " set explicitly; otherwise, Gvim takes on the
    " dimensions of the terminal it was launched from.
    set lines=53
    set columns=96

    set guioptions-=m               " remove menu

    set guifont=Source\ Code\ Pro\ Medium\ 12
endif

if has("gui_macvim")
    """ Disable Mac keyboard navigation shortcuts
    let macvim_skip_cmd_opt_movement=1
endif
