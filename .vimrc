""" Basic Display Options
set vb
set nowrap

""" Backup Options
set nobackup
set nowritebackup

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

""" Pathogen
execute pathogen#infect()

""" Treat Gemfiles and Vagranfiles as Ruby
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby

""" Set custom options for HTML files
autocmd FileType html setlocal wrap linebreak softtabstop=2 shiftwidth=2

""" Set custom options for SSH config files
autocmd FileType sshconfig setlocal shiftwidth=8 softtabstop=8 noexpandtab
