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
Plugin 'a.vim'                 " Switch between header and implementation files
Plugin 'godlygeek/tabular'     " Align lines of text
Plugin 'itchyny/lightline.vim' " Display information in status bar
Plugin 'jamessan/vim-gnupg'    " Encrypt/decrypt files
Plugin 'mileszs/ack.vim'       " Use ack from Vim
Plugin 'rhysd/clever-f.vim'    " Saner f/F/t/T mappings
Plugin 'tpope/vim-commentary'  " Quickly (un)comment blocks of text
Plugin 'tpope/vim-fugitive'    " Use git from Vim
Plugin 'tpope/vim-surround'    " Surround text in other text
Plugin 'tpope/vim-vinegar'     " Enhance netrw

" Language plugins
Plugin 'nginx.vim'
Plugin 'chase/vim-ansible-yaml'
Plugin 'darfink/vim-plist'
Plugin 'derekwyatt/vim-scala'
Plugin 'elzr/vim-json'
Plugin 'elixir-lang/vim-elixir'
Plugin 'guns/vim-clojure-static'
Plugin 'Keithbsmiley/swift.vim'
Plugin 'raichoo/haskell-vim'
Plugin 'sophacles/vim-bundle-mako'
Plugin 'tpope/vim-markdown'

" Color themes
Plugin 'ajh17/Spacegray.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'freeo/vim-kalisi'
Plugin 'jeetsukumaran/vim-nefertiti'
Plugin 'junegunn/seoul256.vim'
Plugin 'Junza/Spink'
Plugin 'nice/sweater'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'reedes/vim-colors-pencil'
Plugin 'vim-scripts/peaksea'
Plugin 'whatyouhide/vim-gotham'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}

call vundle#end()
