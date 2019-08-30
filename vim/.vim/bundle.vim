" Install Vundle if it is not already installed
if !isdirectory(expand("~/.vim/bundle/Vundle.vim"))
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle - required!
Plugin 'VundleVim/Vundle.vim'

" General plugins
Plugin 'Bexec'
Plugin 'godlygeek/tabular'
Plugin 'henrik/vim-indexed-search'
Plugin 'itchyny/lightline.vim'
Plugin 'jeetsukumaran/vim-filebeagle'
Plugin 'jeetsukumaran/vim-indentwise'
Plugin 'junegunn/vim-peekaboo'
Plugin 'rhysd/clever-f.vim'
Plugin 'schickling/vim-bufonly'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'yegappan/grep'

" Language plugins
Plugin 'django.vim'
Plugin 'fountain.vim'
Plugin 'cespare/vim-toml'
Plugin 'chase/vim-ansible-yaml'
Plugin 'dag/vim-fish'
Plugin 'derekwyatt/vim-scala'
Plugin 'ekalinin/dockerfile.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'exu/pgsql.vim'
Plugin 'geekq/vim-go'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'guns/vim-clojure-static'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'keith/swift.vim'
Plugin 'martinda/jenkinsfile-vim-syntax'
Plugin 'mdippery/nginx.vim'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'rdolgushin/groovy.vim'
Plugin 'timcharper/textile.vim'
Plugin 'tpope/vim-markdown'
Plugin 'Vimjas/vim-python-pep8-indent'

" Color themes
Plugin '844196/lightline-badwolf.vim'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
