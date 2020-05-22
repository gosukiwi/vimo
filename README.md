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
    |-> Integrated test runner
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
To run Vimo on Windows, you won't be able to use the bash scripts in `bin/`,
but you can do a manual installation.

Using PowerShell (__requires to run as admin to be able to create a symlink__):

    PS> cd C:/Users/MyUser
    PS> git clone https://github.com/gosukiwi/vimo.git vimfiles
    PS> cd vimfiles
    PS> New-Item -ItemType SymbolicLink -path . -name .\vimrc -value .\vimorc

Then, install Vim-Plug with (also in PowerShell):

    md ~\vimfiles\autoload
    $uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    (New-Object Net.WebClient).DownloadFile(
      $uri,
      $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
        "~\vimfiles\autoload\plug.vim"
      )
    )

Then open Vim once and run `:PlugInstall`. You'll need to install `node` as well. You can do it with the new awesome WinGet:

    PS> winget install node.js

## WSL
If you use
[WSL](http://wsl-guide.org/en/latest/http://wsl-guide.org/en/latest/), just follow 
the UNIX instructions.

Make sure to use a good terminal. If you have no preference, I personally use
[wsl-terminal](https://github.com/goreliu/wsl-terminal) and it "just works".

# Configuration Layers
Configuration is split in several layers, grouped by functionality. The
plugin-related configuration lives in `config/layers/plugins/`, the
configuration related to vanilla Vim lives in `config/layers/core/`.

You can see all layers in the `vimorc` file:

    let g:vimo#layers#ctrlp#disabled     = 0
    let g:vimo#layers#ale#disabled       = 0
    let g:vimo#layers#gitignore#disabled = 0
    let g:vimo#layers#lightline#disabled = 0
    let g:vimo#layers#vinegar#disabled   = 0
    let g:vimo#layers#rails#disabled     = 0
    let g:vimo#layers#webdev#disabled    = 0
    let g:vimo#layers#zenmode#disabled   = 0

If you want to change this, the easiest way is to make a new file
`~/.vimoconfig` with the layers you want to disable set to `1`. By default (for
now) all layers are enabled.

## Custom Layers
If you have more specific needs, for example, for working with Node, React or
PHP, you can create a new configuration layer in `config/layers/`. Remember,
`plugins` is for plugin-related configuration, and `core` is for core Vim
functionality. If you want to add a `filetype` plugin, drop it in
`config/ftplugin`.

If you feel like others would benefit from it, feel free to [submit a
PR](https://github.com/gosukiwi/vimo/pulls)!

A layer can live in several files, for example, the Rails layer includes the
files `config/ftplugin/ruby.vim` as well as `config/layers/plugins/rails`.

# Reference
Vimo uses Vimdoc, check out the [Reference](doc/reference.md) for an automatic,
up-to-date reference on everything Vimo provides. It explains each setting and
displays all key-bindings (does not include plugin-specific commands).

# Contributing
If you plan on contributing, you can install the git-hook in order to re-build
reference documentation automatically for you:

    $ ln -s -f ../../bin/make-documentation .git/hooks/post-commit
