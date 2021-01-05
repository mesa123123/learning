# Vim Options

Vim options are used to configure the vim editor, there are a few types:

* Boolean Options (these can be either on or off)
    * e.g. set number . set nonumber
* Options that contain a value 
    * e.g. shiftwidth=4

Think of options as settings

## Setting Options

Options are usually set using the `set` command (variables aren't controlled with set)

See [Vim let vs. Set](<./vimscript set vs. let.md> "Let vs. Set")

## Checking an Options Value

You can check an options current value with a `?` at the end of the command

e.g. `set number?` will return the current value of the number setting

## Chaining Options Setting

Similar to tooools like apt where you can select multiple packages by delimiting them with a space you can do so with vim options

e.g. `set number shiftwidth=4`

## All options

In order to show all options in the editor use the command `:h option-list`

__ References __ 
_ Learn Vimscript the Hard Way - Steven Losh _

__ TAGS: __
_ #Vim #Configuration #VimSettings #Settings _
