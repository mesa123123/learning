## Declarations & Procedures

Procedures are how you would normally think in a OO or similar kind of paradigm: 
* You describe how to do the thing 
* There is nothing assumed between you, your description will be followed __Exactly__ as you detail it.
* The order of the tasks is important
	* This makes them error prone & inflexible
	* But also closely controlled in their execution, thus any flexibilty pre-baked into the programme can make decisions based on external state
	* This pre-baked flexibility can allow for nuance in the programmes inputs also

Declarations are more describing what you _want_ the computer to give back to you:

* As this leaves some control over to the computer carrrying out the instructions the program is less brittle
* Though because of this there is less control over the nuance of the task (i.e. certain conditions that require state can create a better output, which by definition in functional programming is not possible).
* Requires the inputs to be rigid, "it can be only x as I am a function that processes x!"
* Allows for more predictability with output, a functional declaration given a certain input, no matter what the outside state, will always produce the same output

_Note: there is a challenge to newbie functional programmers as they will need to get used to the loss of control that comes with working on a declarative language_

## Immutable data

The concept of immutable data essentially means data cannot be "tainted"

Review [Pointers](Pointers.md)

If the data in any particular memory location changes, the value of the variable pointing to that location must also change, this can be problematic if you allow things passed by value (rather than by reference _variable for my noob mind_), immutability stops that

#TODO seriously review this concept because this shouldn't be that simple I feel

__TAGS:__
_ #Functional_Programming_for_Dummies_

