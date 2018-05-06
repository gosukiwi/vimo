# pVim
pVim (pretty vim) is a vim configuration fine-tuned for Web Development. It aims
to keep plugins minimal and use as many core functionality as possible in order
to perform most tasks.

It also aims to have a coherent configuration and key-binding scheme. You
can extend it any way you like, but first, let's see the features!

## Installing

    $ git clone <repo-url>
    $ pvim/test-system # this will tell you if you need to install something

    # if everything looks ok:
    $ mv ~/.vimrc ~/.vimrc.old
    $ ln -s pvim/.vimrc ~/.vimrc
    $ vim
    
Then inside Vim run `:PlugInstall`, restart Vim and you're done!

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

## Leader Key
In Vim, the leader key is a special key which is used to run commands. The key
itself varies from person to person, some person like to use `.` or `,` for
this. In pVim, we use `space`.

What can you do with `space`? Let's see:

### Finding Files
pVim uses [CtrlP]() to easily fuzzy-find files in your project. To find a file,
simply run in normal mode `<leader>f` -- where `f` stands for `file`. The format
`<leader>f` means first press the leader key, then press `f`. In our case, the
leader key is `spacebar` so that means press `spacebar`, then press `f`.

## Dependencies

* Vim 8
* `ag` binary -- The silver search, easily install with `brew install`
* _SourceCodePro_, free coding font from Adobe
* `ctags` binary -- for the Go-To-Definition functionality. `brew install ctags`
  for macOS, comes pre-installed with most Linux systems.
