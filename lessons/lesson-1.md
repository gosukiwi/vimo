# Vim Lessons -- specific to Vimo
Let's get you up and running with Vim!

First of all, make sure to have Vimo set up (that is Vim + the Vimo
configuration).  If you don't, don't worry, just check out the __Installing__
section and come back, I'll wait.

There are two common ways of using Vim, in the terminal or as a GUI. There are
advantages and disadvantages to each, but they are basically the same. So pick
any you want.

By now you are supposed to be reading this file in Vim, if you are not doing so,
please open this file with Vim:

    $ vim intro-to-vim.md

# Lesson 1: Modes
Welcome to Vim! Let's get down to bussiness. I'll give you a tour of Vim, and
particularly, using Vim with Vimo configuration.

__IMPORTANT__: Press `j` to scroll down this file. Press `zz` to center the
screen in the current line. Press `<esc>u` to undo. We'll see more commands
later on but for now just use those two to read the text.

Vim is a _modal_ editor, this means it has different editing modes. You can see
the mode you are right now at the status bar at the bottom of the screen. It
should say `NORMAL`. If it doesn't, press `<esc>` until it does. That's the rule
for going back to `NORMAL` mode!

We'll see more modes in Lesson 2, for now, let's continue with Movement.

# Movement
As I spoiled you before, you can go down with the key `j`. You can also go up
with the key `k`.

Press `j` and `k` a few times in order to bring the cursor to this line. Try
moving it up and down a bit more. Play with it!

Now come to this line. Great! Now press `w` several times to put the cursor in
HERE. Oops, did you overdo it? No worries, you can go back by pressing `b`.

As you might have guessed, `w` stands for `word` and `b` stands for `back`. Now
try using `j`, `k`, `w` and `b` to move around and play around.

Once you are done, come back here. We still have two keys to learn when it comes
to movement, `h` and `l`. They move one square to the left and one to the right
respectively. Try playing around with those. They are normally used in
combination with `w` and `b` when you want more fine control on the cursor
position. Try putting your cursor inside the box: [ ].

Great! Now, in order to go to a certain line, press `<line-number>G`, for
example, press `38G`.

Welcome to line 38! To go to the end of the line, you can press `$`. Nice! To go
back you can press `^`. Play around with that.

Done? Good! Now some other helpful big movements. Press `G` to go to the bottom of
the file. Now press `gg` to go to the top. Play around with `G` and `gg`, they
are used quite a lot! `<line-number>G`, `G` and `gg` can be thought of as `go`.

Now, if you want to move across the screen you can use `H`, `M` and `L` to move
the cursor to the High, Middle and Low part of the screen.

Finally, to center the screen to the current cursor position press `zz`. Very
useful this one!

As you might have seen by now, most Vim commands can be _memoized_ easily, this
is no coincidence. Vim encourages you to try and memoize commands and makes it
particularly easy to do so.

Vimo also adds to this by defining a very coherent set of key-bindings.

To move to the next section,  press `<space>f` and type `le2`, fuzzy finding for
"lesson 2", then press `<enter>`.
