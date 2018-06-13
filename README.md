# Vimo

<p align="center">
  <img src="img/logo.gif">
</p>

Vimo is a vim configuration which focuses on providing a set of _coherent
key-bindings_ on top of vanilla-vim.

Vimo aims to minimize the use of plugins, only very important quality-of-life
plugins are included by default, such as ALE, CtrlP, Surround, as well as
syntax-specific plugins for Ruby, SCSS and ES6.

Check out [Quistart Guide](doc/quick-start-guide.md) to get started!

# What you get

    FILE MANAGEMENT
    |-> Fuzzy find files
    |-> Browse files in your project
    |-> Bindings for renaming and deleting files

    SEARCHING
    |-> Seamless search (grep) among all files in your project
    |-> Search-And-Replace among all files in your project
        Vimo asks for confirmation for each replacement, don't worry!

    TAGS
    |-> Go-To-Definition (provided by ctags) - http://ctags.sourceforge.net/languages.html
    |-> Fuzzy find tags
    |-> Seamless integration, don't have to worry about managing the `tagfile`
        used by ctags

    LINTING
    |-> Asyncronous Linting provided by ALE - https://github.com/w0rp/ale#1-supported-languages-and-tools
    |-> Non-blocking

    OTHER
    |-> Coherent bindings
    |-> Great documentation
    |-> Zen-mode (try it out!)

# Quickstart Guide
The [Quickstart Guide](doc/quick-start-guide.md) is the best place to start if
you already know your way around Vim.

It explains Vimo's philosophy and shows examples in a cheatsheet fashion.

## Installing
Clone the repo and run the `install` script:

    $ git clone git@github.com:gosukiwi/vimo.git && cd vimo
    $ bin/install

## Updating

    $ bin/update

## Uninstalling

    $ bin/uninstall

## Installing Vimo along-side Vim
To use Vimo as a separate editor, you can use the `bin/vimo` executable. It will
open a `vim` instance using the `.vimorc` configuration file.

    $ ln -s $(realpath config) ~/.vimo
    $ ln -s $(realpath bin/vimo) /usr/local/bin/vimo

You can now use vimo and pass parameters to it as if it was any other vim
executable:

    $ vimo my-file

If you want to use a __GUI__, something like `mvim` or `gvim`, you can make an
alias anywhere in your `.profile` or `.zprofile` file. 

For example, for `mvim`:

    alias vimo="mvim -u /path/to/vimorc "

Remember to run `:PlugInstall` the first time you open Vimo. You can do it in
one command as such:

    $ vimo -c PlugInstall

Note that the `uninstall` binary will not work with this installation method, so
you need to __manually uninstall if you use this setup__, which is pretty easy,
just remove the `~/.vimo` and `/usr/local/bin/vimo` symlinks.

# Vimo on Windows
There is no current plan to support Windows, nevertheless, do not worry! You
can use [WSL](http://wsl-guide.org/en/latest/http://wsl-guide.org/en/latest/)
to run Ubuntu on Windows!

If you do go this route, make sure to use a good terminal. If you have no
preference, I personally use
[wsl-terminal](https://github.com/goreliu/wsl-terminal) and it "just works".
