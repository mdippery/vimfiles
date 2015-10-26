" Install Vundle if it is not already installed
if !isdirectory(expand("~/.vim/bundle/Vundle.vim"))
    silent !git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
endif

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle - required!
Plugin 'gmarik/Vundle.vim'

" General plugins
Plugin 'godlygeek/tabular'
Plugin 'itchyny/lightline.vim'
Plugin 'jeetsukumaran/vim-filebeagle'
Plugin 'jeetsukumaran/vim-indentwise'
Plugin 'mileszs/ack.vim'
Plugin 'NLKNguyen/copy-cut-paste.vim'
Plugin 'rhysd/clever-f.vim'
Plugin 'schickling/vim-bufonly'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'

" Language plugins
Plugin 'chase/vim-ansible-yaml'
Plugin 'chrisbra/csv.vim'
Plugin 'darfink/vim-plist'
Plugin 'derekwyatt/vim-scala'
Plugin 'elzr/vim-json'
Plugin 'elixir-lang/vim-elixir'
Plugin 'geekq/vim-go'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'guns/vim-clojure-static'
Plugin 'kchmck/vim-coffee-script'
Plugin 'keith/swift.vim'
Plugin 'mdippery/nginx.vim'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'sophacles/vim-bundle-mako'
Plugin 'timcharper/textile.vim'
Plugin 'tpope/vim-markdown'

" Color themes
Plugin '844196/lightline-badwolf.vim'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
