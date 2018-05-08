# Lesson 8: Repeating with Macros
Macros allow you to record commands and reproduce several times. It's great for
repetitive tasks, and can save you quite a considerable amount of time.

Let's say you want to turn this:

    a = This is some demo.
    a = This is some demo.
    a = This is some demo.
    a = This is some demo.
    a = This is some demo.
    a = This is some demo.
    a = This is some demo.
    a = This is some demo.
    a = This is some demo.
    a = This is some demo.

Into this:

    a = "This is some demo"
    a = "This is some demo"
    a = "This is some demo"
    a = "This is some demo"
    a = "This is some demo"
    a = "This is some demo"
    a = "This is some demo"
    a = "This is some demo"
    a = "This is some demo"
    a = "This is some demo"

Let's record our editions and then repeat them as needed. Go to the first `a` in
line 7. Then pressing `qq`. This is similar than marking with `m`, after the
`q`, Vim wants a name, because it's easy to type, most people pick the name `q`,
so the command reads `qq` for _record into q_.

Now type `fTvt.S"$x^j<esc>`. Now, that's a lot of edits, but the beauty about
Vim memonic rules is that you can read that command outloud: _find T visually
select till . surround with quotes, go to end of line, delete character, go to
beginning of line, go one line down, go back to NORMAL mode_.

Now press `q` to stop recording. Our actions are now saved in record `q`. To run
them, we can use `@q`. Try it. Hopefully, it ran the same commands and made the
proper editions to one more line. You can use `@@` to repeat the last executed
record. Most people choose to use this commad because they can simply spam the
key until every change is addressed. You could also say, for example, `99@@` to
repeat the macro 99 times, or until it fails. It's common Vim jargon for "repeat
this until it fails".

# Recursive Macros
A recursive macro is very similar to a regular macro, but it's repeated until it
fails, it saves a few keystrokes than `99@q` or just smashing `@@`.

To make a recursive macro, simply call the macro before you stop recording. For
example: `qa[some commands]@aq`. I used `a` for the name so it's easier to read,
normally, you'd just use `q`. 

As you can see, we start recording with `qa`, perform our edits, then call it
with `@a` before stop recording with `q`. Now we can run `@a` once more and it
will run recursively until the first fail. Pretty handy.

# Don't worry too much about this
Macros are great, but they take time and practice to get them right. They have a
bad reputation because people just rush to learn them.

Macros require you to add extra commands to prepare the input for next iteration
of the macro, that forces you to think in a recursive way. It's better to come
back to this once you feel more confident with Vim. So if it sounds hard, just
ignore this for now.

If you are interested, see `:help complex-repeat` to learn everything about
macros.
