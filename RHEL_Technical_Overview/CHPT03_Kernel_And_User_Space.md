# Kernel and User Space

## Key Takeaways

* The kernel as the heart of the operating system thus is responsible for:
    * Scheduling Running Programs
    * File Management
    * Security
    * Device Drivers
    * Networking Implementation
    * Supporting the User Programs that run in the user space
* User Space is where you run
    * The Shell
    * Web Browsers
    * Simply anything that could be called a "program" by a layman is run in the user space
* User Space and Kernel Space interact through special devices or system calls
* An Individually running program is called a process
* Each process has its own private virtual memory space
    * Each process also has its own process id (commonly called "pid")
* Process can be in 3 states
    * Currently Running
    * Waiting to Run
    * Blocked and waiting for dependent resources
* There are three 'classes' of processes
    * There are two types of processes associated with the terminal
        * Foreground Processes are those run in the terminal they accept output from the shell and send output back to the terminal
        * Background Processes are those who aren't taking input from the terminal, but can display output to the terminal
        * Processes can be moved between the foreground and background
    * Daemon Processes, are processes that are started by the system.
        * They provide things such as networking services
        * They perform house keeping tasks within the system to keep it running
    * Kernel Threads
        * They are running as if they were user processes, but are not associated with the terminal. They are scheduled as though they were user processes but are a part of the kernel
* Process information can be outputted to the shell using the `ps` command
    * `pts/1` is a psuedo terminal session, _I don't know what this means?_

## Questions

* Are 'Services' considered different programmes?
* What space do 'Services' run within?
* Are all user processes somehow associated with the terminal? Where does terminal and shell differentiate here?
* Are all user processes somehow associated with the shell if they're not all associated with the terminal?
* How far reaching is the shell within the linux environment?
* Are daemon processes kernel side or user side? Or another side altogether?
* Are daemon processes associated with the terminal too?
* Are the terminal and user space practically the same?
* The heck does pseudo terminal session mean?

__TAGS:__

__References__
_[Chapter 3: RHEL Technical Overview](https://rhtapps.redhat.com/promo/course/rh024?segment=2)_

