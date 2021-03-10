# Pointers (Programming Concept)
> In computer science, a pointer is an object in many programming languages that stores a memory address. This can be that of another value located in computer memory, or in some cases, that of memory-mapped computer hardware. A pointer references a location in memory
_Wikipedia Article on Pointers_

## How it Works
For a computer program, the memory of the computer is a succesion of memory cells, each with a single byte and a unique address (cell 175 being after 174 and so on). When a variable is declared the storage of that value is assigned a location in the computers memory (which takes the form of a unique address).

So a variable has a name that is given to it by the programmer e.g. `int imyInt = 12;` and the computer in in the background will give it an address in memory e.g. `17001` so the computer will know that `imyInt` is at `17001` in memory. 

Now say you want to go `int imyOtherInt = imyInt` the computer would find the current value of `imyInt` and transfer it to `imyOtherInt` so they both equal `12` however these will be stored in two different memory locations. 

If instead we wanted to pass the actual location of where `imyInt` was storing its value you'd use a pointer. For example I create `imyIntPointer = *imyInt` which would pass the value in memory from `imyInt` into `imyIntPointer`. 

## Why is it useful?
@todo look into this
- [ ] [redditthread](https://www.reddit.com/r/learnprogramming/comments/2vfgzx/cwhat_is_the_point_of_pointers/)
- [ ] [cplusplus article](https://www.cplusplus.com/doc/tutorial/pointers/)