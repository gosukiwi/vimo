# Vimo

<p align="center">
  <img src="img/logo.gif">
</p>

Vimo is a vim configuration fine-tuned for Web Development, designed to include
everything you'll need for efficient web development while keeping it minimal
and follow the UNIX philosophy.

Vimo tries to keep plugins minimal and use as many core functionality as
possible.

The biggest feature for Vimo though is the coherent set of key-bindings. If
you've used Spacemacs, then you know what I mean. Otherwise, don't worry, just
check out the [respective lesson here].

# What you get

* Fuzzy-finder for files, buffers and tags
* Go-To-Definition for popular programming languages
* Linting (async) for popular programming languages
* Persistent undo -- Close vim, open it again, and still be able to use undo!
* Undo Tree -- A UI which displays the history of all undo commands and their
  branching, like a git log
* Emmet/Zencoding -- Expand CSS selectors into HTML elements
* Coherent Bindings -- Easily memoizable commands for managing windows, buffers,
  files, and pretty much every feature.
* Very well documented set of configuration
* Lessons for new users as well as a quick-start guide for experienced Vim users

Take a glance at the features in the [Quick Start
Guide](doc/quick-start-guide.md).

## Installing
Clone the repo and run the `install` script:

    $ git clone git@github.com:gosukiwi/vimo.git
    $ vimo/bin/install

## Installing Vimo along-side Vim
To use Vimo as a separate editor, you can use the `bin/vimo` executable. It will
open a `vim` instance using the `.vimorc` configuration file.

    $ ln -s $(realpath bin/vimo) /usr/local/bin/vimo
    $ bin/vimo -c PlugInstall

You can now use vimo and pass parameters to it as if it was any other vim
executable:

    $ vimo my-file

If you want to use a __GUI__, something like `mvim` or `gvim`, you can make an
alias anywhere in your `.profile` or `.zprofile` file. 

For example, for `mvim`:

    alias vimo=mvim -u /path/to/vimorc .

Remember to run `:PlugInstall` the first time you open Vimo.

## Updating
Simply go to this repo and:

    $ git pull

## Uninstall
To uninstall you can simply

    $ mv ~/.vimrc.old ~/.vimrc

# New to Vim?
No worries! We have you covered. Check out the [lessons](lessons/) and get up to
speed in no time.

The lessons give a broad overview on how to use Vim (and particularly Vimo)
efficiently. It's designed to get you out of beginner level and enable you to
continue learning on your own, using Vim's great `:help` system as well as the
internet :) 
