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
Plugin 'ajh17/Spacegray.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chase/vim-ansible-yaml'
Plugin 'darfink/vim-plist'
Plugin 'derekwyatt/vim-scala'
Plugin 'elzr/vim-json'
Plugin 'freeo/vim-kalisi'
Plugin 'elixir-lang/vim-elixir'
Plugin 'guns/vim-clojure-static'
Plugin 'itchyny/lightline.vim'
Plugin 'jamessan/vim-gnupg'
Plugin 'jeetsukumaran/vim-nefertiti'
Plugin 'junegunn/seoul256.vim'
Plugin 'Junza/Spink'
Plugin 'Keithbsmiley/swift.vim'
Plugin 'mileszs/ack.vim'
Plugin 'nice/sweater'
Plugin 'noahfrederick/vim-hemisu'
Plugin 'raichoo/haskell-vim'
Plugin 'reedes/vim-colors-pencil'
Plugin 'rhysd/clever-f.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-vinegar'
Plugin 'vim-scripts/nginx.vim'
Plugin 'vim-scripts/peaksea'
Plugin 'whatyouhide/vim-gotham'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}

call vundle#end()
