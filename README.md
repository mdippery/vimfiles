My Vim configuration files. Installation requires [GNU Stow][stow].
To install:

    $ git clone https://github.com/mdippery/vimfiles.git .vimfiles
    $ cd .vimfiles
    $ stow vim

This Vim configuration also relies on [Vundle][vundle], which should be
installed automatically. If not, you can install Vundle manually:

    $ cd ~/.vim/bundle
    $ git clone https://github.com/gmarik/Vundle.vim.git

  [stow]: http://www.gnu.org/software/stow/
  [vundle]: https://github.com/gmarik/Vundle.vim
