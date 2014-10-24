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

""" Improved split creation/navigation
set splitbelow
set splitright
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

""" jj to enter normal mode from insert mode
inoremap jj <Esc>

""" K to insert a new line
nnoremap K r<CR><Esc>

""" Tap space to center on current line
nnoremap <Space> zz

""" Keep selection region when indenting
vnoremap < <gv
vnoremap > >gv

""" Disable Mac keyboard navigation shortcuts
if has("gui_macvim")
    let macvim_skip_cmd_opt_movement=1
endif

""" Lightline configuration
""" (I only use lightline in mvim/gvim, but
"""  the config doesn't work unless I do it
"""  here.)
source ~/.vim/lightline.vim
