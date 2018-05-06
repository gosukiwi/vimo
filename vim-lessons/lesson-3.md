# Lesson 3: Finding text
Finding text is quite related to navigating. There are a few different ways to
search for some text in Vim. The main one is using the `/` command.

Let's try searching for POTATO. Press `/` and then type "POTATO", then press
`<enter>`. Notice that some words start to highlights as you continue to type.

Hopefully by now you see all the instances of POTATO being highlighted. Press
`n` -- for _next_ -- to go to the next match. You can also press `N` to go to
the previous match.

Leave the cursor in this POTATO by playing around with `N` and `n` several
times. Great! Now press `<esc>`. The highlight will dissapear.

Another way to perform a search, this one quicker, is using `*`. Place the
cursor anywhere inside this POTATO. Now press `*`. As you can see, that triggers
a search for the word under the cursor. Pretty handy!

The final way to search test is by using `f` which can be read as `find`. This
command searchs for a single character in the current cursor line.

For example, press `f.` below to move the cursor to the dot:

  The small kitty was purring.

The `f` command searches __forward__, if you want to search backwards, you have
to use `F`. Try again with the example above and try looking for `T` by pressing
`FT`.

As you might have realized, in this case, both with `f` and `n`, their uppercase
counterpart does the same but in opposite direction. Vim tries to keep things
somewhat consistent.

# Deleting text
Deleting text in `VISUAL` mode is quite simple, just press `x` or `d` and your
selection is deleted.

In `NORMAL` mode, `d` and `x` are a bit different. The simplest of the two is
`x`, it simply removes a character.


    REMOVE THE X [x]


It takes a `count` as parameter so you can do `10x` to delete 10 characters. You
can also use `x` in `VISUAL` mode to delete selected text.

The more powerful command is `d`. Type `:help d` to find out more about it. It
expects a `{motion}` after it to tell it how much to delete.

Motions simply move the cursor somewhere. We have seen some motions already, in
the movement section. You can use `h, j, k, l`, `w`, `b`, etc. 

For example, try moving the cursor anywhere inside `Bar` below and press `daw`:

  Foo Bar Baz

`aw` is what's called a _text object_, you can `:help text-objects` if you want
but really all you need to know is that `a` stands for `around` and `i` stands
for `inside`, and they can be used in motions and `VISUAL` mode.

In the command we ran earlier, we removed the word `Bar` as well as it's
surroundings, this means, the space after `Bar` was also deleted, and it doesn't
matter where the cursor is, as long as it's touching any part of the word. If
you simply put the cursor in `a` inside `Bar` and press `dw` it will not delete
the whole word, it will delete from the cursor onwards, which is most likely not
what we want most of the time.

We can also use `f` to find a delimiter, try deleting everything until the dot:

    
    Hello! Delete me.


As you might have guessed, you can also do `diw` to delete the word but not it's
surroundings, in this case, the space. Play around with it if you want! Remember
you can press `u` in normal mode to undo any change.

If you put the cursor in the `H`, and press `df.` it will delete everything
including the dot. What if you want to delete everything until the dot, but not
the dot itself? Easy, use `t`, which reads as _till_, so `dt.` is _delete till
dot_:


    Hello! Delete me again, but not the dot.


This text object motion is quite useful, because we are not limited to words,

check this out:

    Hello (maybe).


Put the cursor inside the parens and press `di(`, this means, _delete around
parens_. Pretty cool huh? But you know what's more cool? It works with XML:

    <strong><i>Hello</i></strong>

Put the cursor in the `H` and press `dat`, for _delete around tag_. Nice! You
can also use `dit` for delete inside tag, this is great when changing text, as
we'll see below.

You can delete a whole line with `dd` or `D`

# Changing Text
Changing text in `VISUAL` mode is simple, simply press `c` and you'll be able to
change the selection.

Changing some text in `NORMAL` mode is quite similar to deleting it, but instead
of using `d` we change it by pressing `c`, for _change_. 

We can pass it the same stuff we send to `d`, so let's change what's inside the
`<i>` tag from `Hello World` to `Some Text`


    <strong><i>Hello World</i></strong>


To do that, put the cursor inside the tag (you can put it in the first `<`) and
then press `cit` for _change inside tag_. Then simply type the text and press
`<esc>`.

You can change the whole line with `cc` or `C`. There is also an in-place
character replace command: `r`. This is the best for fixing typos.
