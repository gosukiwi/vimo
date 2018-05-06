# Lesson 2: Insert Mode
We took a glimpse at modes in Lesson 1. We learnt about `NORMAL` mode. `NORMAL`
mode is the mode you want to be on 99% of the time. It's for scrolling, finding,
browsing and basically reading text.

When working with a text file, most of the time spent is reading it. We spend 
way less time writing it. Especially if we are writing code.

The process normally goes as follows: Open up a file in normal mode, find
whatever line is causing the issue, make the proper changes, maybe enter another
editing mode, then go back to `NORMAL` mode by pressing `<esc>` as soon as you
are done. You should make that a habit, it's very useful to avoid typos and just
having vim go crazy on you for no reason.

Now, besides `NORMAL` mode, we have `INSERT` mode, which is for writing text.

In order to enter insert mode, simply press `i` from `NORMAL` mode. If you are
not in normal mode, press `<esc>` then press `i`.

The status bar should now say `INSERT`. Try it! Press `i` anywhere below and
type something:


    Type here: 


Good! Now vim behaves as a regular text editor. Whatever you type, vim writes.
Press `<esc>` to go back to `NORMAL` mode. To undo something, simply press `u`
while in `NORMAL` mode. You can try simply pressing i, smashing some keys, then
pressing `<esc>` and then `u` to undo it.

Another way to insert text is by pressing `I` to _insert at the beggining of the
line_:

  ello, my name is Vim.

Go to the line above this one and press `I` to add the missing `H` to the
sentence. Notice that Vim automatically positions the cursor at the beginning
of the sentence. Now come back to `NORMAL` mode by pressing `<esc>`.

Let's see some other ways to add text. You can press `a` from `NORMAL` mode
to _append_ some text after the cursor position.

For example, use `a` to fix the typo: I like aples

In that case, you position the cursor in the first `p` of "I like aples", press
`a`, type `p` and then press `<esc>`.

We can also use `A`, which means _append to the end of the line_. Try it with
the line below, just move the cursor to line 39, press `A` then type `d`.

  I am 18 years ol

Nice! Remember to press `<esc>` once you are done. This one is used quite
fequently, so it's good to remember it.

Another thing we can do is add text on the line before of the cursor, and on the
line after the cursor.

By pressing `o`, Vim will add a line _under_ the cursor. By pressing `O`, Vim
will add a line _on top_ of the cursor.

Try it below, fix the following sequence. Play around with `o` and `O`:

  1
  3
  5
  6
  9

# Visual Mode
Visual mode is basically what other editors call a "selection". In Vim, you can
select manually by using the moving commands, select by line or select by block.

The first mode we can enter by pressing `v`, for _visual mode_. We can then use
our regular moving commands, such as `h, j, k, l, b, w, gg, G, ^, $, etc`.

Try selecting the text inside the quotes: "This is a demo text. Hello World!"

One way is positioning the cursor on the `T`, then press `v` to start visual
mode in this character. Then press `w` until the seletion includes `World`, then press
`l` to move it one letter to the right, and select the shebang too.

Nice! Now let's select the a whole line. Press `<esc>` to go back to `NORMAL`
mode, now position the cursor in the line below and press `V`:

This is a whole line!

The whole line is selected! That's nice. Now go back to `NORMAL` mode.

The last selection mode is called `blockwise`, it let's you select squares
of text. For example, comment out the lines below:

    # This is a comment
    a = 1
    b = 2
    print b
    print a

The easiest way is to position the cursor in `a` in `NORMAL` mode, then press
`<c-q>` or `<c-v>`, press `j` a few times, so we select it all the way from `a =
1` to `print a`.

We then press `I` to enter `INSERT` mode, type `# ` then press `<esc>`. All
lines should now be commented.

# Command-Line Mode
The final mode I'll show is command-line mode. This is useful for running
commands Vim provides.

Some commands modify text, others configure the editor, and others just display
some info.

For example, in `NORMAL` mode, type `:help`. That displays Vim's default help,
which is a great resource to learn about Vim, an extensive documentation system.

Press `:q` to close the help `:q` is another command, meaning _quit_. As you
might have guessed, all commands start with `:`.

You can use help followed by any command to learn more about it. For example,
the `:new` command opens a new buffer. You can see exactly what it does by
typing `:help new`.

Use the help system, it's a great habit to pick up. It's terse at first but
it's consistent so eventually it gets easier.

We'll see more commands in the next lessons, for now just know that pressing `:`
enters command-line mode, you run commands by pressing `<enter>` and you can
leave anytime by pressing `<esc>`, which will take you back to `NORMAL` mode.
