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

" My plugins
Plugin 'a.vim'
Plugin 'chase/vim-ansible-yaml'
Plugin 'darfink/vim-plist'
Plugin 'derekwyatt/vim-scala'
Plugin 'elzr/vim-json'
Plugin 'elixir-lang/vim-elixir'
Plugin 'godlygeek/tabular'
Plugin 'guns/vim-clojure-static'
Plugin 'itchyny/lightline.vim'
Plugin 'jamessan/vim-gnupg'
Plugin 'Keithbsmiley/swift.vim'
Plugin 'mileszs/ack.vim'
Plugin 'raichoo/haskell-vim'
Plugin 'rhysd/clever-f.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'vim-scripts/nginx.vim'

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
