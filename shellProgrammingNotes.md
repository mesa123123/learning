# Shell Programming Notes

## The Link Commands and Linking as a Concept
_The Link Command_  makes two copies of the same file, in the same sense as you'd have a sync folder on the google drives, but for files within the same file system

```ln from to```

Basically allows one file to appear in more than one directory simultaneously

### Symbolic Linking

This is similar to linking but for files not within the same files system, except it acts more like a shortcut rather than an actual link, in the sense that if you remove the original file the linked file would no longer work, whereas with a proper link this would not be the case.
You can create a symbolic link by using the '-s' option on a ln command

```ln -s from to ```

You'll notice that the file has a symbolic link when on a '_ls -l_' command it displays:
		* lzzzzzzzzz

Rather than:
		* -zzzzzzzzz

As its file permissions
(Note the letter z is just an arbitrary place holder)

#### Dangling Links
A symbolic link to a file that no longer exists is referred to as a _dangling symbolic link_, and should be removed unless you have a specific reason to keep it around (e.g. replacing the file)

## The DF Command
Outputs the different file systems on a computer

```df```

## Filename Substitution
Its more of a convention rather than actual programmes that do actual stuff but very useful!

__NOTE: These rules work with the commands that deal with files, different programmes and systems may/will have other conventions in place__

1. * is a wildcard
		a. It acts much the same way as a placeholder would for instance 'Cheap\*' would return true for Cheapest and Cheaper
		b. It acts to match 0 or more characters so the example in a would also return true for Cheap
		c. Can put it at the start of expressions too \*eap\* would return true for heap, cheap, cheapest and cheaper 
2. ? is similar but only matches one single character
		a. Think of it like 'Cheape?' would match Cheaper but not Cheapest or Cheape because the ? character is pendantic about the length
		b. You can also use it to be pedantic about a certain amount of letters after the expression 'Cheap???' would return true on Cheapest
3. * and ? together can create super powers!
		a. ??* means at least things of length 2.
		b. ??eap* means two characters must come before eap (though what they are isn't a biggie) and then as many characters as you want afterwards
			e.g. heap would be false but cheap, cheapest, and cheaper would all be true.
4. - can be used to specify certain ranges, _so long as the first character in the range is alphabetically less than the second_
		a. [a-z] would be all alphabet characters
		b. [f-z] would be an error
		c. You can also specify more than one range [a-np-z] would be all alphabet that is not o
		d. ! like in most cases this flips the truth value so:
			i. [!a-z] would be anything not in the alphabet
			ii. !??eap* throws an error as this is not looking at a range

## Tricky Filename Nuances

because the shell takes spaces as a delimiter (a character that denotes the end of one arguement and the start of another), whitespace in a shell arguement requires "escaping"

For instance:
	* The phrase: `Polly wants a cracker`
		- will be written as "Polly\ wants\ a\ cracker"

## Control + D or The "I'm done with my inputs" Command

Some programs request input from the shell if arguements haven't been given before the RETURN key has been pressed


## Redirecting File Contents to Command Line
### Output Redirection
In essence you can put the output into a file by adding '> _newfilename_' onto the command.
To append the output of a command to an old file name you can add '>> _old filename_' onto the command.

### Input Redirection
In a similar vein you can take the contents of a file and use it as the _input_ of a commandline commad.
In order to do this, use `_command_ < _filename_`

## Pipes (or how to put the output of one command into the next
When you put a pipe between commands:

``` command1 | command2 ```

The second command takes the output of the first through the standard input of the second:
For instance:
Say you wanted to cound the number of files in a directory:
Given:
	`wc -l` gets the line count of its input
	`ls` outputs the number of files in the current directory
We could use:
	`ls | wc -l` gives the number of files in in the current directory

_Note: you can use more than_
