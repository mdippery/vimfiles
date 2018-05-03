source ~/.vim/bundle.vim

syntax on
filetype plugin indent on

set timeoutlen=350                  " delay before executing ambiguous keymap

set vb                              " use visual bell
set nowrap                          " disable line wrapping
set hidden                          " hides buffers instead of closing them
set laststatus=0                    " disable status line

set directory=$HOME/.vim/.swap      " set swap directory
set backupdir=$HOME/.vim/.backup    " set backup directory
set noswapfile                      " disable swap file creation
set nobackup                        " disable backup creation
set nowritebackup                   " disable atomic saves

set autoread                        " auto reload externally-edited files

set tabstop=8                       " draw tabs with 8 spaces
set softtabstop=2                   " set soft tab of 2 spaces
set shiftwidth=2                    " use 2 spaces for auto-indents
set expandtab                       " use spaces instead of tabs
set autoindent                      " autoindent code
set shiftround                      " indent to next tab stop multiple
set backspace=indent,eol,start      " allow deleting auto-indentation

set showmatch                       " show matching brackets
set tags+=.tags                     " point ctags to ./.tags file

set wildmode=longest,list,full      " complete file names like bash first
set wildmenu                        " enable bash-like file completion

set splitbelow                      " open horizontal split below current
set splitright                      " open vertical split to right of current


" Use relative paths in buffer list
autocmd BufReadPost * silent! lcd .



" Key Mappings
" ------------------------------------------------------------

" jj to enter normal mode from insert mode
inoremap jj <Esc>

" ;; to enter normal mode from visual mode
vnoremap ;; <Esc>

" Tap space to save
nnoremap <Space> :w<CR>

" H and L to move to beginning and end of line
nnoremap HH ^
nnoremap LL $

" yank to end of line
nnoremap Y y$

" K to insert a new line
nnoremap K r<CR><Esc>

" Keep selection region when indenting
vnoremap < <gv
vnoremap > >gv

" Remove search highlighting (until next search)
nnoremap <silent> <Leader>h :noh<CR>

" Toggle between relative and absolute numbers
nnoremap <silent> <C-n> :call ToggleLineNumbers()<CR>

" Show/hide invisible characters
nnoremap <silent> <F2> :call ToggleInvisibles()<CR>

" Improved split creation/navigation
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" Improved buffer navigation
nnoremap <Tab> :b#<CR>
nnoremap ; :ls<CR>:b
nnoremap <Leader>w :bd<CR>

" Copy entire file
nnoremap <Leader>A ggVG"+y

" Edit a path saved to the clipboard
nnoremap <Leader>E :e <C-r>+

" Show full path to file
nnoremap <C-g> :echo expand('%:p')<CR>

" Remap cut-copy-paste keybindings
let g:copy_cut_paste_no_mappings = 1
nmap yc <Plug>CCP_CopyLine
vmap yc <Plug>CCP_CopyText
nmap yx <Plug>CCP_CutLine
vmap yx <Plug>CCP_CutText
nmap yv <Plug>CCP_PasteText



" Functions
" ------------------------------------------------------------

if exists('+relativenumber')
    function! ToggleLineNumbers()
        if (&relativenumber == 1)
            set norelativenumber
            set number
        else
            set number
            set relativenumber
        endif
    endfunction
endif

function! ToggleInvisibles()
    if (&list == 1)
        set nolist
    else
        set list
    endif
endfunction



" GUI Settings
" ------------------------------------------------------------

" Why manually load ~/.vim/gui.vim instead of just using
" ~/.gvimrc? Some plugins have settings that rely on being
" loaded and set earlier than ~/.gvimrc is loaded. Manually
" controlling when GUI settings get loaded seems like a fairly
" simple solution to the problem.

if has("gui_running")
    source ~/.vim/gui.vim
endif
