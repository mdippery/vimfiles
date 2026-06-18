My Vim configuration files. Installation requires [GNU Stow][stow].
To install:

    $ git clone https://github.com/mdippery/vimfiles.git .vimfiles
    $ cd .vimfiles
    $ stow vim

This Vim configuration also relies on [Vundle][vundle], which should be
installed automatically. If not, you can install Vundle manually:

    $ cd ~/.vim/bundle
    $ git clone https://github.com/VundleVim/Vundle.vim.git

## Vim Errata

Not specific to this repository, but here are a few Vim keystrokes I
historically don't use, but are useful enough that I'd like to memorize them.

| Keys     | Action                                    |
| -------- | ----------------------------------------- |
| ZZ       | Save and exit (like `:x`)                 |
| ZQ       | Quit without saving (like `:q!`)          |
| ctrl + u | Move screen ½ page **up**                 |
| ctrl + d | Move screen ½ page **down**               |
| ctrl + y | Move screen one line up                   |
| ctrl + e | Move screen one line down                 |
| zt       | Move current line to **top** of screen    |
| zz       | Move current line to center of screen     |
| zb       | Move current line to **bottom** of screen |
| H        | Move cursor to first line of screen       |
| M        | Move cursor to middle line of screen      |
| L        | Move cursor to last line of screen        |

[stow]: http://www.gnu.org/software/stow/
[vundle]: https://github.com/VundleVim/Vundle.vim
