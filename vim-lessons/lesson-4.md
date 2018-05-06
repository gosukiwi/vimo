# Lesson 4: Cut/Copy/Paste
Cut, copy and paste behave a little differently in Vim. Let's see with an
example:

Say we delete the letter `f` from `foo` by pressing `x` in `NORMAL`
mode. Now, deleted text has been moved to a register. Vim is not limited to the
clipboard, it has many different registers and you can do complex things with
it.

For now, let's stick to simple functionality. Take a chance to run `:help
registers` and read a bit about it.

As you might have seen, it explains:

> 1. Unnamed register ""
> Vim fills this register with text deleted with the "d", "c", "s", "x" commands
> [...]
> Vim uses the contents of the unnamed register for any put command (p or P)
which does not specify a register.

So, we can put whatever is in the unnamed register with `p` and `P`. Let's see!

  Foo

Go to the `F` of `Foo`. Press `x`, then press `p`.

Done it? Groovy. As you can see, it turns out it writes `oFo`, that's because
`p` puts the content _after_ the cursor, use `P` to put it before:

  Foo

Nice! We can now "cut" and "paste". What about copy? Well, we call that yanking,
and it's done with `y`, for _yank_. We can then paste with `p` or `P`. 

`y` expects a _motion_, a value which can tell it how much to yank, should it yank
the character? the word? the line?  until some character? We can do all that:
  
    yl  - yank one to the right, this matches a single character
    yw  - yank word
    yy  - yank line
    Y   - yank line
    yf. - yank until you find a dot character
  
Play with it here:


  Use this text to practice yanking!


You can also yank with `VISUAL` mode. Once you have a selection, simply press
`y` to yank it.

# Moving text around

# The repeat command
Repeating commands are a core part of Vim experience. One of the main resons
people don't quite get Vim is because they never learn about repeating commands.

It's one of the tools you use daily

# Buffers and Windows

# Surround
Surrounds and change tags

# ADVANCED
# Marks
# Macros
