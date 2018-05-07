# Lesson 6: Surround and Matching Pairs
One cool feature is _surround_. You can use it in `VISUAL` mode to wrap the
selection with a _pair_.

For example:

    a = Hello World!

Put the cursor in `H`, press `v` then `f!` to select the whole `Hello World!`.
Now press `S"` to surround the selection with quotes.

Vim is smart enough know how to interpret more characters. For example:

    a = 2 + 3 - 1

Put the cursor in the `2`, press `vf3` to select the first binary operation
(addition) -- then press `S(` to add parens around.

Pretty cool! It works with `{ and [` too.

# Find pair

You can use `%` to quickly _find the pair_ of the character under the cursor.

    (+ 2 (- 3 2))

Place the cursor in any `(`. Press `%` to move the cursor to the matching
parentheses. This is very useful in complex strings.

It also works with XML tags:

    <p>Hello, World</p>

Put the cursor in the `p`, then press `%` to go to the closing tag. Note that if
you put the cursor in `>` or `<` it matches the other pair within the same tag,
it doesn't work in the same way.

You can use _text objects_ using pairs too:

    (select me)

To select the text inside the parentheses, go to `(`, press `vi(` to _visually
select inside (_. As you have guessed, this works for XML tags, parens, quotes
and pretty much any pair.

# Marks
You can add _marks_ to some positions inside a buffer with `m` followed by an
identifier so we can refer to it later. For example, `ma` for _mark a_. You can
then go to mark a by pressing `'a`.

Try it, put a mark here with `mq`, then scroll around, then come back with
`'q`.

This is very useful for big files, or going back and forth between to methods of
the same file.

Now let's go to lesson 7 by doing `<space>fle7<enter>`.
