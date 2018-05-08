# Lesson 4: Moving text around
Copy and paste behave a little differently in Vim.

Say we delete a letter from a file by pressing `x` in `NORMAL` mode. Now,
the deleted text has been saved to a register. A register is like the OS
`clipboard`, a memory slot which stores some temporary text for us.

Vim is not limited to a single register though, it has many. We will not dive
very deep with registers, but if you want to learn more, see `:help registers`.

For now, let's only talk about the unnamed register:

> Vim fills [the unnamed] register with text deleted with the "d", "c", "s", "x"
> commands
> [...]
> Vim uses the contents of the unnamed register for any put command (p or P)
which does not specify a register.

So, we can put whatever is in the unnamed register with `p` and `P`. Let's see!

  Foo

Go to the `F` of `Foo`. Press `x`, then press `p`.

Done? Groovy. As you can see, it turns out it writes `oFo`, that's because
`p` puts the content _after_ the cursor, use `P` to put it before:

  Foo

Nice! We can now "cut" and "paste". What about copy? Well, we call that yanking,
and it's done with `y`, for _yank_. We can then paste with `p` or `P`. 

`y` expects a _motion_, which as we saw in lesson 3, it's any operation which
moves the cursor, like `hjkl`, `w`, `b`, `$`, `f.` (_find_ the dot character)
etc. We can also use `yy` or `Y` to yank the whole line, just like we used `dd`
or `D` to delete the whole line, or `cc` and `C` to change the whole line.
  
Play with it here:


  Use this text to practice yanking!


You can also yank with `VISUAL` mode. Once you have a selection, simply press
`y` to yank it.

# The clipboard
By default in Vim, the clipboard is stored in a different register called `"*`.
Vimo makes the `unnamed` and the `"*` registers equal, meaning you can yank to
the clipboard and put from the clipboard by default.

For example, you can `Y` to yank this line, then go to a browser and paste it
somewhere using `<control-v>`. Or you can copy some text from your browser and
use `p` to _put_ it in your Vim instance.

# Moving chunks of text
Vimo has a few bindings to make it easy to move text around. You can use `<c-j>`
and `<c-k>` to sort the lines below:


    Sort the lines below, from 1 up to 4
    4 Taz
    3 Baz
    1 Foo
    2 Bar

Pretty handy huh? And it also works in `INSERT` mode, give it a shot!

# Joining lines
This is another very useful feature. You can _join_ lines with `J`, try it:

    Today
    is
    a
    nice
    day.

Now put the cursor anywhere in the `Today` line. Press `J` a few times.

Great job! Let's go to lesson 5 by doing `<space>fle5<enter>`.
