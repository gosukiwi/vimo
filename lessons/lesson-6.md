# Lesson 6: Buffers, Windows, Tabs?
This is a common make-or-break moment for many new users. 

> How do I do tabs in Vim?

That is a common question among IDE users, or users with editors like Textmate,
Sublime, VSCode or Atom. The answer is: You can, but it's not really what you
think it is.

Vim has it's own way to display and navigate though files. It might be daunting
but it's mostly bad reputation. You can do some interesting things with it, like
having many viewports on different parts of the same file or even replacing
`tmux`.

Let's start with `buffer`. A buffer is the in-memory text of a file. The file
remains unchanged until you write the buffer to the file. 

A buffer can be `active`, `hidden` or `inactive`. A buffer is `active` if it's
being displayed in a window, when it's not being displayed is `hidden`. Don't
worry about the last one for now ;)

If you run `:ls` you can see a list of all buffers. Active buffers have an `a`
and hidden buffers have an `h`, among other symbols.

This list is not that friendly, so Vimo provides `<space>b` for _buffers_. It
shows you a list of all open buffers and their respective files, among some
other info. You can scroll up and down with `<control-j>` and `<control-k>`, or
as it's referred in Vim, `<c-j>` and `<c-k>`.

If you don't see many buffers, it's because you haven't opened any other file
yet. To open a file do `<space>f` for _files_. It will show all the files in the
current working directory. Select any file, like a lesson for example. Type
`lesson` and the fuzzy finder will show all matching files. Press `<c-v>` for
`vertical` to open it in a vertical split window.

If you now do `<space>b` you should see the new file in your buffer list.

But what did just happen? A new window opened. A window is a viewport of a
buffer. We are now looking at two buffers in two windows, side by side.

We can create more windows and arrange them in many different patterns. For
example, `<space>wv` for `windows vertical` creates a new vertical window.
`<space>ww` for `windows create` creates a new horizontal window. You can
navigate from one window to another with `<space>w` and `hjkl`. So `<space>wj`
to go to the window below, `<space>wl` to go to the window on the right, and so
on. You can also use `<c-hjkl>` if you prefer that way.

You can even press `<space>wr` to rotate the window layout :)

Now, to change the buffer a windows is showing, focus that window, and then
press `<space>b`, use `<c-j>` and `<c-k>` to pick a buffer and press `<enter>`
to display it.

Try it, focus the other window and pick this buffer, the `lesson-6.md` buffer.

You are now looking at the same buffer from two different pointviews at the same
time. This can be useful for big files.

## [TIP] Toggle Buffers
There is a very easy way to toggle between the current buffer and the last
buffer, that is `<space><tab>`. It's very handy to go back and forward between
files, like when editing HTML and CSS or checking on a documentation file while
writing code.

# Browsing files
As you have seen, you can use `<space>f` to open and search for files. Sometimes
you just don't know the name of the file, it those cases it feels easier to just
see the contents of some folder.

In that case, you can use the file browser by pressing `<space>F` for _Files_ or
`-` for short.

You can use `-` to go up one level. Press `<enter>` to open a file and `%` to
create a new file.

Moving, renaming and changing files is not implemented, because of the UNIX
philosophy, this plugin tries not to do too much.

If you want to rename, move or delete a file, you can always use the terminal:

    $ mv old-file new-file
    $ rm some-other-file

Now let's go to lesson 7 by doing `<space>fle7<enter>`.
