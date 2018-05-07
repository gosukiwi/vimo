# Repeating Commands
Repeating commands is core to an efficient Vim experience. Is what puts Vim
in another league.

The easiest way to repeat something is the `.` command. It simply repeats
whatever you did last.

For example, if you wrote something, it writes it again. If you deleted
something, it deletes it again.

Try the following. In the text below, put the cursor at the beginning of the
line. Then press `df.` and finally press `.` again.


    This is a sentence. This is another sentence.


The dot command repeated our last command one more time, because our initial
command was _delete find dot_, it deletes the whole sentence in this case.

This could be also archieved with a `[count]`, something like `d2f.` but it
takes time to count how many dots there are in the sentence. This way you can
simply press `.` a few times. Sure, it's not the shortest way to do it but it's
consistent and most of the time you don't need to repeat it more than two or
three times. If you have to repeat too much, consider another way to do it.

Dot also helps with entered text. Type something below and then press `<esc>` to
go back to `NORMAL` mode. Now press `.` to add the text again a few times:


    TYPE BELOW (use `o`):


This is particularly useful when used together with `*`, the _find word under
cursor_ command.

It's an easy way to interatively, without typing a command, we can find all
occurences of a name and replace it.

For example, replace all instances of `foo` with `bar`:


    foo = 1
    a = foo + 2
    b = foo - 1
    c = foo * foo

Put the cursor in `foo`, then press `*` and use `N` and `n` to navigate to the
first occurence. Then press `ciwbar<esc>` to _change inside the word_ to `bar`
and go back to `NORMAL` mode. Now press `n` to navigate with the next occurence,
and press `.` to replace it again. Do it as many times as needed.

Pretty cool huh? You can also use `;` to repeat the _last find command_, for
example, say you want to replace all the `_` with spaces in the text below:


    A_B_C_


Put the cursor in `A`, press `f_` to find the first underscore, then press `r `
to replace it with a space. Press `;` to repeat the search, press `.` to repeat
the command. Press `;.` a few more times and you are done.

Now let's go to lesson 6 by doing `<space>fle6<enter>`.
