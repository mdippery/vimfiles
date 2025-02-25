My Vim configuration files. Installation requires [GNU Stow][stow]. It uses
the [Vim 8 package manager][pack] to manage plugins, so you must initialize
and update the repository's submodules after cloning. To install:

    $ git clone https://github.com/mdippery/vimfiles.git .vimfiles
    $ cd .vimfiles
    $ git submodule update --init --recursive
    $ stow vim

To convert an existing repository to use [Vim 8 packages][pack], run:

    $ git pull
    $ git submodule update --init --recursive
    $ rm -rf ~/.vim/bundle

To update submodules to the latest versions, run:

    $ git submodule update --remote --rebase

and commit the changes to the repository.

  [pack]: https://medium.com/@paulodiovani/installing-vim-8-plugins-with-the-native-pack-system-39b71c351fea
  [stow]: http://www.gnu.org/software/stow/
