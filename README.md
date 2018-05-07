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

# What you get

* Fuzzy-finder for files, buffers and tags
* Go-To-Definition, Find-All-Instances for popular programming languages
* Persistent undo -- Close vim, open it again, and still be able to use undo!
* Undo Tree -- A UI which displays the history of all undo commands and their
  branching, like a git log
* Linting (async) for popular programming languages
* Lightline -- A status bar at the bottom of Vim to show important file info
* Tab autocompletion while typing
* Familiar functionality, save with Ctrl-S, copy with Ctrl-C and paste with
  Ctrl-V
* Emmet/Zencoding -- Expand CSS selectors into HTML elements
* Coherent Bindings -- Easily memoizable commands for managing windows, buffers,
  files, and pretty much every feature.
* Very well documented set of configuration
* Lessons for new users as well as a quick-start guide for experienced Vim users

## Quick Guide
Vimo is a Vim configuration. See why it's cool in the [Quick
Guide](quick-guide.md).

## Installing
Clone the repo and run the `install` script:

    $ git clone git@github.com:gosukiwi/vimo.git
    $ vimo/bin/install

If you lack some dependency, the script will help you install everything you
need.

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


# New to Vim?
No worries! We have you covered. Check out the [lessons](lessons/) and get up to
speed in no time.

The lessons give a broad overview on how to use Vim (and particularly Vimo)
efficiently. It's designed to get you out of beginner level and enable you to
continue learning on your own, using Vim's great `:help` system as well as the
internet :) 

# TODO
- doctor && install
