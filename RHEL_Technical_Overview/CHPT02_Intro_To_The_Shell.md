# Introduction to The Shell

## Key Takeaways

* The linux shell is the environment in which you work and is an interface to the rest of the operating system
    * [Note on the Shell for Better Reference](<../Shells.md> "../Shells")
* The shell on RHEL is bash by default (this is the case with a lot of Linux Distributions) but can be changed for another is desired
* The shell in RHEL automatically uses different symbols on its prompt to denote the type of user
    * Root (Administrator) Users have the character: #
    * Regular Users have the character: $
* You use the shell to execute commands
    * Commands are executed with
        * options which influence how the command is executed
            * _I've often seen options called "switches"_
        * arguments, which is the data (think objects) that the command will work against
* Options come in an abbreviated form (begins with a `-` character), and a long form (begins with a `--`)
    * This matters as `-all` is using the abbreviated `-a` and abbreviated `-ll` simultaneously and `--all` is only making use of one
* Arguments can be optional or mandatory
* Some commands do not need an option or argument at all e.g. `ls`
    * you can find out if this is the case by checking the `man` page (see below) if there is a listing within the pages `synopsis` with only optional options, then the command can be run standalone
* `man` pages
    * can be found by typing `man [command]` (e.g. `man ls`)
    * is designed to bring up reference documentation on that particular command
    * Synopsis: you can see how are particular command is made by looking at the SYNOPSIS section in its `man` page
        * ellipses in the synopsis denote that there can be multiple of the option or argument given to the command
        * if an option or command appears within a single `[]` set with a `|` separating it, the options are either or (you cannot use both in a single command).
* Hidden files in linux appear with a `.` character at the start

## Questions

* What is the formal definition of a prompt
* Is the shell the thing that starts after the bootloader?
* What exactly is the boot process for linux?
* What does it mean to __parse__ something? (I really never looked this one up)
* In a man page what denotes an "optional" option or arguement? (as opposed to a mandatory one?

__TAGS:__

__References__
_[Chapter 2: Introduction to the Shell](https://rhtapps.redhat.com/promo/course/rh024?segment=1)_
