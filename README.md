# Vimo

<p align="center">
  <img src="img/logo.gif">
</p>

Vimo is a vim configuration fine-tuned for Web Development, designed to include
everything you'll need for efficient web development while keeping it minimal
and follow the UNIX philosophy.

It tries to keep plugins minimal and use as many core functionality as possible
in order to perform most tasks.

It also aims to have a coherent configuration and key-binding scheme. You
can extend it any way you like, but first, let's see the features!

## Installing
First, run the doctor and see if your system is ready:

    $ git clone git@github.com:gosukiwi/vimo.git
    $ cd vimo
    $ bin/doctor # this will warn you if there's something missing in your system

## Installing Vimo on top of Vim
If you don't want to keep your other Vim configuration, just replace it with
Vimo:

    $ bin/install

This is what the install script looks like:

    $ mv ~/.vimrc ~/.vimrc.old
    $ ln -s .vimo ~/.vimrc
    $ vim -c PlugInstall

## Installing Vimo along-side Vim
To install Vimo this way, you can use the `bin/vimo` executable. It will open a
`vim` instance using the `.vimo` configuration file.

    $ ln -s bin/vimo /usr/local/bin/vimo
    $ bin/vimo -c PlugInstall

You can now use vimo and pass parameters to it as if it was any other vim
executable:

    $ vimo my-file

If you want to use a __GUI__, something like `mvim` or `gvim`, you can make an
alias anywhere in your `.profile` or `.zprofile` file. 

For example, for `mvim`:

    alias vimo=mvim -u /path/to/.vimo .

Remember to run `:PlugInstall` the first time you open Vimo.

### Updating
To get the latest version simply go to the repo and do `git pull`, because the
`.vimrc` file is symlinked it will update automatically.

## Functionality
This is what you get out-of-the-box:

* Fuzzy finder for files, buffers and tags_*_
* Go-To-Definition, Find-All-Instances for popular programming languages
* Persistent undo -- Close vim, open it again, and still be able to use undo!
* Undo Tree -- A UI which displays the history of all undo commands and their
  branching, like a git log_*_
* Linting (async) for popular programming languages_*_
* Lightline -- A status bar at the bottom of Vim to show important file info
* Tab autocompletion while typing_*_
* Familiar functionality, save with Ctrl-S, copy with Ctrl-C and paste with
  Ctrl-V
* Emmet/Zencoding -- Expand CSS selectors into HTML elements_*_
* Coherent Bindings -- Easily memoizable commands for managing windows, buffers,
  files, and pretty much every feature.

> _NOTE_: Items marked with a _*_ require a plugin, either because it's a
> feature which is missing in Vim or because Vim provides a poor user-experience
> by default. To disable the features you don't want, simply toggle some
> variables at the top of the configuration file.

## Quick Guide
Vimo is a Vim configuration. See why it's cool in the [Quick
Guide](quick-guide.md).

# New to Vim?
No worries! We have you covered. Check out the [lessons](lessons/) and get up to
speed in no time.

The lessons give a broad overview on how to use Vim (and particularly Vimo)
efficiently. It's designed to get you out of beginner level and enable you to
continue learning on your own, using Vim's great `:help` system as well as the
internet :) 
