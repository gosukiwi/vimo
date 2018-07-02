# Autocomplete
Use <tab> in insert mode to toggle Vim's autocomplete

Open autocomplete if typing something, otherwise, add a tab

```vim
inoremap <expr> <tab> InsertTabWrapper()
```

Use j to scroll down suggestions

```vim
inoremap <expr> j ((pumvisible()) ? ("\<C-n>") : ("j"))
```

Use k to scroll up suggestions

```vim
inoremap <expr> k ((pumvisible()) ? ("\<C-p>") : ("k"))
```

# Buffers
Swap current buffers

```vim
noremap <leader><tab> :b#<CR>
```

# Change Text
Settings related to changing text and moving it around.

When the `"unnamed"` string is included in the `clipboard` option, the unnamed register is the same as the `"*` register. Thus you can yank to and paste the selection without prepending `"*` to commands.  X-11 systems use other registers, that's why we check for "unnamedplus".

```vim
let &clipboard = has('unnamedplus') ? 'unnamedplus' : 'unnamed'
```

Indent visual selection

```vim
vnoremap <Tab> >gv
```

Dedent visual selection

```vim
vnoremap <S-Tab> <gv
```

Dedent current line

```vim
inoremap <S-Tab> <Esc><<i
```

Move the line down

```vim
nnoremap <C-j> :m .+1<CR>==
```

Move the line up

```vim
nnoremap <C-k> :m .-2<CR>==
```

Move the line down

```vim
inoremap <C-j> <ESC>:m .+1<CR>==gi
```

Move the line up

```vim
inoremap <C-k> <ESC>:m .-2<CR>==gi
```

# CORE
Defaults we can all agree on

Make the backspace behave like it's supposed to in insert mode

```vim
set backspace=indent,eol,start
```

A filetype plugin is a Vim script that is loaded whenever Vim opens or creates a file of that type.  These lines add `~/.vimo` to the `runtimepath` so all file-type plugins can live in `~/.vimo/ftplugin`.

```vim
let &runtimepath = "~/.vimo" . "," . &runtimepath
filetype plugin indent on
```

Reload files changed outside vim

```vim
set autoread
```

Set default encoding to UTF-8

```vim
set encoding=utf-8
set fileencoding=utf-8
```

Turn on syntax highlighting

```vim
syntax on
```

Enable matchit plugin which ships with vim and greatly enhances `%`

```vim
runtime macros/matchit.vim
```

Allow to leave unsaved buffers and keep them in the background

```vim
set hidden
```

Disable Ex mode, use Q for formatting

```vim
map Q gq
```

# TAGS
Easy and async `ctags' with Vim! This is not perfect but it "just works".

see `:help tjump` to know how this works NOTE: The register "t" is being used in the keybinding

Search for a tag

```vim
nnoremap <leader>ts :call RefreshTagfile()<CR>:tag /
```

Go to tag definition

```vim
nnoremap <leader>tt "tyiw:call GoToTag()<CR>
```

Go to tag definition

```vim
nnoremap <leader>tg "tyiw:call GoToTag()<CR>
```

Go back to previous tag definition

```vim
nnoremap <leader>tb <C-t>
```

List all tags

```vim
nnoremap <leader>tl :ts<CR>
```

Refresh the tagfile

```vim
nnoremap <leader>tr :call RefreshTagfile()<CR>
```

Go to next tag

```vim
nnoremap <leader>tn :tnext<CR>
```

Go to previous tag

```vim
nnoremap <leader>tp :tp<CR>
```

Go to previous tag

```vim
nnoremap <leader>tN :tN<CR>
```

Use `.tags` as the name of the tagfile so it's hidden by default.  Because of `;` Vim will also recurse upwards when searching for the tagfile, so you can open deeply nested files and Vim will look up for a corresponding tagfile.

```vim
set tags=./.tags;,./tags;
```

# Display
These settings customize the way Vim displays stuff

Use relative line numbers for easier j/k navigation (eg: 10g, 25j, etc)

```vim
set relativenumber
```

Show the current line number instead of 0 for the cursor line

```vim
set number
```

Long suggestions for normal mode commands

```vim
set wildmode=list:longest
```

Keep the cursor visible within 3 lines when scrolling

```vim
set scrolloff=3
```

Always display the status line

```vim
set laststatus=2
```

Make a mark for column 80

```vim
set colorcolumn=80
```

Set the mark color to lightgray

```vim
highlight OverLength ctermbg=lightgray guibg=lightgray
```

Use Adobe's Source Code Pro font

```vim
set guifont=Source\ Code\ Pro
```

Color theme, see `layers/plugins/theme`

```vim
colorscheme nova
```

# Files
File-related functionality. See also `rcplugins/ctrlp` and `rcplugins/filebeagle`.

Backup and swap files are saved in ~/.vimo/tmp

```vim
set backupdir=~/.vimo/tmp
set directory=~/.vimo/tmp
```

Rename current file

```vim
nnoremap <leader>fr :call RenameFile()<CR><CR>
```

Delete current file

```vim
nnoremap <leader>fd :call DeleteFile()<CR><CR>
```

Save current file

```vim
nnoremap <C-s> :w<CR>
```

Save current file

```vim
inoremap <C-s> <Esc>:w<CR>a
```

# Filetypes
Associations between extensions and file types

You can add custom associations between extensions and file types as follows:

autocmd BufNewFile,BufRead *.md setlocal ft=markdown

# Movement
_'a_ is used to go to mark _a_, but it only remembers the line, not the column. This is not bad, but we can use _`a_ to go to the line as well as column where the mark was defined. Let's use this "better default" instead and swap _`_ with _'_.  So _'a_ will go to the column as well as the line of the mark _a_.

```vim
nnoremap ' `
nnoremap ` '
```

`0` will move to the beginning of a line. `^` will move to the beginning too, but it's smarter as it respects empty spaces. Because `0` is easier to reach, let's swap these.

Go to the beginning of the line, respecting empty spaces

```vim
nnoremap 0 ^
```

Go to the real beginning of the line

```vim
nnoremap ^ 0
```

Select all

```vim
noremap <leader>a ggVG
```

# Search
Useful settings for quickly searching among files in the project.

Highlight as you type kind of search -- if a pattern contains an uppercase letter, match for case sensitive, otherwise, match for case-insensitive.

```vim
set incsearch
set hlsearch
set ignorecase
set smartcase
```

the default glob matches all files, this gets overriden in each filetype plugin to scan for certain extentions, see `ftplugin/ruby` for an example.

Search recursively in all filetypes within the current working directory.

```vim
vnoremap <leader>sa "sy:call SearchIn("**/*")<CR>:cw<CR>
```

Search recursively withing files of the same type within the current working directory.

```vim
vnoremap <leader>ss "sy:call SearchIn("")<CR>:cw<CR>
```

Replace searched term in search result

```vim
nnoremap <leader>sr :call ReplaceMatch()<CR>
```

Clear search higlight

```vim
nnoremap <leader>sc :noh<CR>
```

Show next matched string at the center of the screen

```vim
nnoremap n nzz
```

Show previous matched string at the center of the screen

```vim
nnoremap N Nzz
```

# SSH
Useful settings when SSH-ing.

You can edit a remote files as follows:

$ vim scp://remoteuser@server.tld//absolute/path/to/document

See `:help paste` for more info on paste-mode.

The screen will not be redrawn while executing macros, registers and other commands that have not been typed. Also, updating the window title is postponed.

```vim
set lazyredraw
```

# Terminal / Console
Settings related to the terminal. Use the `c` namespace for now, because `t` is reserved for Tags.

Open a new terminal in a vertical split

```vim
nnoremap <leader>cc :vsplit<CR><C-w>l:term ++curwin<CR>
```

Open a new terminal in a vertical split

```vim
nnoremap <leader>cv :vsplit<CR><C-w>l:term ++curwin<CR>
```

Open a new terminal in a horizontal split

```vim
nnoremap <leader>ch :term<CR>
```

# Window Management
Bindings for managing windows.

Horizontal split

```vim
nnoremap <leader>ww :split<CR>
```

Vertical split

```vim
nnoremap <leader>wv :vsplit<CR>
```

Go to window on the left

```vim
nnoremap <leader>wh <c-w>h
```

Go to window on the bottom

```vim
nnoremap <leader>wj <c-w>j
```

Go to window on the top

```vim
nnoremap <leader>wk <c-w>k
```

Go to window on the right

```vim
nnoremap <leader>wl <c-w>l
```

Quit window

```vim
nnoremap <leader>wq <c-w>q
```

Full-screen this window (expand)

```vim
nnoremap <leader>wf <c-w>o
```

Rotate windows clockwise

```vim
nnoremap <leader>wr <c-w>r
```

Rotate windows counter-clockwise

```vim
nnoremap <leader>wR <c-w>R
```

Equalize size of all windows

```vim
nnoremap <leader>w= <c-w>=
```

Toggle window

```vim
nnoremap <leader>w<tab> <c-w>w
```

Increase width of current window

```vim
nnoremap <leader>w+w 10<c-w>>
```

Decrease width of current window

```vim
nnoremap <leader>w-w 10<c-w><
```

Increase height of current window

```vim
nnoremap <leader>w+h :resize +10<CR>
```

Decrease height of current window

```vim
nnoremap <leader>w-h :resize -10<CR>
```

# Writing
Settings for writing.

Use spaces instead of tabs

```vim
set expandtab
```

Autoindent based on line above, works most of the time

```vim
set autoindent
```

Smarter indent for C-like languages

```vim
set smartindent
```

Use 2 spaces for indentation

```vim
set shiftwidth=2    " when reading
set softtabstop=2   " in insert mode
```

Undo peristent across sessions. [See this article](https://jovicailic.org/2017/04/vim-persistent-undo/) for more information.

```vim
set undofile
set undodir=~/.vimo/tmp
```

Go to the end of the line

```vim
inoremap <C-l> <Esc>A
```

Go to the end of the line

```vim
inoremap <C-e> <Esc>A
```

Go to the beginning of the line

```vim
inoremap <C-h> <Esc>I
```

Go to the beginning of the line

```vim
inoremap <C-b> <Esc>I
```

# ALE
# Asyncronous Lint Engine
ALE

```vim
Plug 'w0rp/ale'
```

Use `xx` to signal errors

```vim
let g:ale_sign_error = 'xx'
```

Use `!!` to signal warnings

```vim
let g:ale_sign_warning = '!!'
```

# CtrlP
# Fuzzy Finder
files, buffers and tags.

CtrlP

```vim
Plug 'ctrlpvim/ctrlp.vim'
```

Fuzzy-find buffers

```vim
noremap <leader>b :CtrlPBuffer<cr>
```

Fuzzy-find files

```vim
noremap <leader>ff :CtrlP<cr>
```

Fuzzy-find tags (tag list)

```vim
nnoremap <leader>tL :CtrlPTag<CR>
```

No max files limit

```vim
let g:ctrlp_max_files = 0
```

Enable tag plugin

```vim
let g:ctrlp_extensions = ['tag']
```

Use `ag` when seeking files, super fast and ignores `.gitignore` and such.

```vim
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
```

Always clear cache on startup, useful when swapping between git branches a lot. Just close/open Vim when you swap branches. You can also press `<F5>` while the fuzzy-find popup is active to manually update the cache.

```vim
if has("autocmd")
  autocmd VimEnter * CtrlPClearCache
endif
```

# Emmet
Writing HTML by hand is a pain, Emmet makes it less-awful

```vim
Plug 'mattn/emmet-vim'
```

Do not set up Emmet on all filetypes, only on HTML, CSS and PHP

```vim
let g:user_emmet_install_global = 0
autocmd FileType html,css,php EmmetInstall
```

Use `<C-q>,` to trigger it

```vim
let g:user_emmet_leader_key = '<C-q>'
```

# Etc
Plugins which require no special configuration

Highlights yanked text so it's easy to see

```vim
Plug 'machakann/vim-highlightedyank'
```

Sandwich, like surround but better

```vim
Plug 'machakann/vim-sandwich'
```

Autopairs - Smart (), [], {}, etc

```vim
Plug 'jiangmiao/auto-pairs'
```

Similar to Autopairs but works with `end` (eg: Ruby, Vimscript).

```vim
Plug 'tpope/vim-endwise'
```

# gitignore
Add entries from gitignore into `wildignore`

```vim
Plug 'vim-scripts/gitignore'
```

Check for gitignore when opening Vim

```vim
if has("autocmd") && filereadable(".gitignore")
  autocmd VimEnter * WildignoreFromGitignore
endif
```

# Lightline
Lightweight and pure vimscript status bar.

Lightline plugin

```vim
Plug 'itchyny/lightline.vim'
```

Lightline display settings

```vim
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'linter_warnings', 'linter_errors', 'linter_ok' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_expand': {
      \   'linter_warnings': 'LightlineLinterWarnings',
      \   'linter_errors': 'LightlineLinterErrors',
      \   'linter_ok': 'LightlineLinterOK'
      \ },
      \ 'component_type': {
      \   'readonly': 'error',
      \   'linter_warnings': 'warning',
      \   'linter_errors': 'error',
      \   'linter_ok': 'ok'
      \ },
      \ }
```

ale + lightline

# Quick Scope
Makes it easy to see what to target with `f`

```vim
Plug 'unblevable/quick-scope'
```

Only trigger this when using f, F, t or T

```vim
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
```

# Rails
Default Ruby syntax is SLOW - Use this one instead

```vim
Plug 'vim-ruby/vim-ruby'
```

Slim syntax

```vim
Plug 'slim-template/vim-slim'
```

Coffeescript syntax

```vim
Plug 'kchmck/vim-coffee-script'
```

# Theme
Pretty colors!

Use Nova theme

```vim
Plug 'trevordmiller/nova-vim'
```

# VINEGAR
Make Vim's default netrw easy to use.

Vinegar

```vim
Plug 'tpope/vim-vinegar'
```

Open file browser, use `I` to see help

```vim
map <silent> <leader>fb <Plug>VinegarUp
```

# Web Development Generics
Use XML/HTML tags as text objects

```vim
Plug 'kana/vim-textobj-user' | Plug 'whatyouhide/vim-textobj-xmlattr'
```

CSS3 Syntax

```vim
Plug 'hail2u/vim-css3-syntax'
```

ES6 Syntax

```vim
Plug 'othree/yajs.vim'
```

# Goyo
Zen writing setup

Pair or plugins to set up zen-mode

```vim
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
```

Toggle Limelight on Goyo enter/leave

```vim
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
```

Toggle zen-mode

```vim
nnoremap <leader>z :Goyo<CR>
```

# MARKDOWN
These settings are specific for the markdown filetype.

Use 80 columns for text.

```vim
setlocal textwidth=79
```

# PHP
These settings are specific for the PHP filetype.

Use 4 spaces for indentation

```vim
setlocal shiftwidth=4 softtabstop=4
```

# Ruby
These settings are specific for the Ruby filetype.

Add debugging line (binding.pry)

```vim
nnoremap <leader>rd obinding.pry<esc>
```

Go to next debugging line (binding.pry)

```vim
nnoremap <leader>rD /binding.pry<cr>
```

# Mapping List
|Key|Mode|Description|
|---|---|---|
|`<tab>`|`INSERT`|Open autocomplete if typing something, otherwise, add a tab|
|`j`|`INSERT`|Use j to scroll down suggestions|
|`k`|`INSERT`|Use k to scroll up suggestions|
|`<leader><tab>`|`NORMAL`, `VISUAL`, `SELECT`, `OPERATOR-PENDING`|Swap current buffers|
|`<Tab>`|`VISUAL`, `SELECT`|Indent visual selection|
|`<S-Tab>`|`VISUAL`, `SELECT`|Dedent visual selection|
|`<S-Tab>`|`INSERT`|Dedent current line|
|`<C-j>`|`NORMAL`|Move the line down|
|`<C-k>`|`NORMAL`|Move the line up|
|`<C-j>`|`INSERT`|Move the line down|
|`<C-k>`|`INSERT`|Move the line up|
|`Q`|`NORMAL`, `VISUAL`, `SELECT`, `OPERATOR-PENDING`|Disable Ex mode, use Q for formatting|
|`<leader>ts`|`NORMAL`|Search for a tag|
|`<leader>tt`|`NORMAL`|Go to tag definition|
|`<leader>tg`|`NORMAL`|Go to tag definition|
|`<leader>tb`|`NORMAL`|Go back to previous tag definition|
|`<leader>tl`|`NORMAL`|List all tags|
|`<leader>tr`|`NORMAL`|Refresh the tagfile|
|`<leader>tn`|`NORMAL`|Go to next tag|
|`<leader>tp`|`NORMAL`|Go to previous tag|
|`<leader>tN`|`NORMAL`|Go to previous tag|
|`<leader>fr`|`NORMAL`|Rename current file|
|`<leader>fd`|`NORMAL`|Delete current file|
|`<C-s>`|`NORMAL`|Save current file|
|`<C-s>`|`INSERT`|Save current file|
|`0`|`NORMAL`|Go to the beginning of the line, respecting empty spaces|
|`^`|`NORMAL`|Go to the real beginning of the line|
|`<leader>a`|`NORMAL`, `VISUAL`, `SELECT`, `OPERATOR-PENDING`|Select all|
|`<leader>sa`|`VISUAL`, `SELECT`|Search recursively in all filetypes within the current working directory.|
|`<leader>ss`|`VISUAL`, `SELECT`|Search recursively withing files of the same type within the current working directory.|
|`<leader>sr`|`NORMAL`|Replace searched term in search result|
|`<leader>sc`|`NORMAL`|Clear search higlight|
|`n`|`NORMAL`|Show next matched string at the center of the screen|
|`N`|`NORMAL`|Show previous matched string at the center of the screen|
|`<leader>cc`|`NORMAL`|Open a new terminal in a vertical split|
|`<leader>cv`|`NORMAL`|Open a new terminal in a vertical split|
|`<leader>ch`|`NORMAL`|Open a new terminal in a horizontal split|
|`<leader>ww`|`NORMAL`|Horizontal split|
|`<leader>wv`|`NORMAL`|Vertical split|
|`<leader>wh`|`NORMAL`|Go to window on the left|
|`<leader>wj`|`NORMAL`|Go to window on the bottom|
|`<leader>wk`|`NORMAL`|Go to window on the top|
|`<leader>wl`|`NORMAL`|Go to window on the right|
|`<leader>wq`|`NORMAL`|Quit window|
|`<leader>wf`|`NORMAL`|Full-screen this window (expand)|
|`<leader>wr`|`NORMAL`|Rotate windows clockwise|
|`<leader>wR`|`NORMAL`|Rotate windows counter-clockwise|
|`<leader>w=`|`NORMAL`|Equalize size of all windows|
|`<leader>w<tab>`|`NORMAL`|Toggle window|
|`<leader>w+w`|`NORMAL`|Increase width of current window|
|`<leader>w-w`|`NORMAL`|Decrease width of current window|
|`<leader>w+h`|`NORMAL`|Increase height of current window|
|`<leader>w-h`|`NORMAL`|Decrease height of current window|
|`<C-l>`|`INSERT`|Go to the end of the line|
|`<C-e>`|`INSERT`|Go to the end of the line|
|`<C-h>`|`INSERT`|Go to the beginning of the line|
|`<C-b>`|`INSERT`|Go to the beginning of the line|
|`<leader>fb`|`NORMAL`, `VISUAL`, `SELECT`, `OPERATOR-PENDING`|Open file browser, use `I` to see help|
|`<leader>z`|`NORMAL`|Toggle zen-mode|
|`<leader>rd`|`NORMAL`|Add debugging line (binding.pry)|
|`<leader>rD`|`NORMAL`|Go to next debugging line (binding.pry)|
