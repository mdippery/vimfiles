source ~/.vim/vundle.vim

""" Basic Display Options
set vb
set nowrap
set hidden
set laststatus=0

""" Backup Options
set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/swap
set nobackup
set nowritebackup

""" Automatically reload externally-edited files
set autoread

""" Tabbing Options
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set shiftround

""" Code Style Options
set showmatch
syntax on
filetype plugin indent on
set tags+=.tags

""" jj to enter normal mode from insert mode
inoremap jj <Esc>

""" Improved split creation/navigation
set splitbelow
set splitright
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

""" Improved buffer navigation
nnoremap gt :bn<CR>
nnoremap gT :bp<CR>
nnoremap Q  :b#<CR>
nnoremap <Leader>w :bd<CR>

""" yank to end of line
nnoremap Y y$

""" K to insert a new line
nnoremap K r<CR><Esc>

""" Tap space to enter commands
nnoremap <Space> :

""" Keep selection region when indenting
vnoremap < <gv
vnoremap > >gv

if has("gui_macvim")
    """ Disable Mac keyboard navigation shortcuts
    let macvim_skip_cmd_opt_movement=1
endif

""" These settings should only be run in a GUI environment
""" but need to be sourced before ~/.gvimrc.
if has("gui_running")
    """ Lightline configuration
    source ~/.vim/lightline.vim
endif
