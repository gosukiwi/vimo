# Cool things you can do with Vim

There's nothing like real-life examples to show how good something 
really is.

## Example 1

Let's say you are updating `FactoryGirl`, a gem which recently changed
it's name to `FactoryBot`. So, you have to find all occurences of `FactoryGirl`
and replace them with `FactoryBot`.

    $ vim $(ag FactoryGirl | awk '/rb/ {split($1,a,":"); print a[1]}')

That will open up a vim instance with all the files which contain "FactoryGirl".

Once in Vim, we can use `bufdo` to run a command on all open buffers, in this
case:

    :bufdo %s/FactoryGirl/FactoryBot/ge | update

The `g` flag is to change all occurrences in each line (global), and `e` means
no error if the pattern is not found. `update` means to write the file if it
changed.

If you want to see what happened you can do

    $ git status

## Example 2

Comment out many lines.

## Example 3

Sort CSS properties
