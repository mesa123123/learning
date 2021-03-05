# Vim Basic Mappings

Basic Mappings can be thought of as run of the mill keyboard shortcuts they are similar to other code editors as they are able to be completely customized.

You can change the "mode" in which each key mapping applies, see [Vim Modal Mapping](<./Vim Modal Mapping.md> "Modal Mapping Scopes") for more on this.

Basic Mappings are used in Normal Mode

## Making a Mapping

Basic mappings are created in the ./vimrc and during the use of vim using the `map` command e.g. `map - x` maps the `-` key to the function that is usually for the `x` key (which deletes the character at the cursors position).

This can be done for any key mapping in the vim arsenal, and are not reserved for single characters.

## Unmake a Mapping

This is similar to the map command but you simply use `unmap` where you would put map

## Special Character in Mappings

Certain keys on the keyboard don't have a text equivalent (for instance `SPACE`) so they are selected through special means

[The list of these keys is here:][1]

* `<Ctrl>`         Control Key also `<C>`
* `<BS>`           Backspace
* `<Tab>`          Tab
* `<CR>`           Enter also `<Enter> <Return>`
* `<Esc>`          Escape
* `<Space>`        Space
* `<Up>`           Up arrow
* `<Down>`         Down arrow
* `<Left>`         Left arrow
* `<Right>`        Right arrow
* `<F1> - <F12>`   Function keys 1 to 12 also `#1, #2..#9,#0` for the first 10
* `<Insert>`       Insert
* `<Del>`          Delete
* `<Home>`         Home
* `<End>`          End
* `<PageUp>`       Page-Up
* `<PageDown>`     Page-Down
* `<bar>`          the '|' character, which otherwise needs to be escaped

### Mapping Modifiers

Keys like `SHIFT CTRL ALT` can be used as modifiers for other keys to describe simulataneous key presses, but they require a special modifier notation to create the mapping 

__NOTE: The keys `<C-J>` cannot be used as a mapping as they're usually associated with the nul character, and vim internally uses them for its line feed__

___BackLinks___

_[Vim Mappings](<./Vim Mappings.md> "Vim Mappings Contents")_

__TAGS:__
#Vim #VimMappings

__References__ 
 
[Learn Vimscript the Hard Way](./Books/learnvimscriptthehardway.pdf)

[1]: https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_2) "Mapping Keys in Vim"


