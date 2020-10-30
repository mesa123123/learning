# C++ Tutorial with Derek Banas

## Commenting is Similar to Java

## Import C Helpful Libraries

	``` 
		#include <cstdlib> //helpful functions for the basics, i.e. memory management etc.
		#include <iostream> //read and write values
		#include <string> //gets you to work with strings
		#include <limits> //holds information about the contraints with data types
		#include <vectors> //allows you to work with the vector data structure
		#include <sstream> //allows work with string streams
		#include <numeric> //allows work with sequences of values
		#include <ctime> //time functions
		#include <cmath> //math functions
	```

## Using Keyword

This keyword is used to bring members from a particular namespace into the current scope of the programme
Also can be used to bring EVERY member of a namespace into the current scope
Bringing a base class method into the current class's scope

## Namespaces



## Base Class


## Stream insertion operator <<

## Main method in C++

`
	int main(int argc, char** argv) {
		//Doooo Stuff
		return 0;
	}
`

The C++ language's main function returns an int because (similar to shell scripts) the programmes running returns an exit code, return 0; is a way of returning an exit code which says "all ok!"

For Inputs: 
* The int argc tells the complier how many arguements that will be placed inside the main function
* The char** argv is an array of pointers to strings

## Global Variables

## Constants

Are created using the `const` keyword.

example: `const <type> <var name> = <value>`

## Types - Theres a few - These values are all stored in the <limits> library

* Integer Types
	* unsigned short int (0, 65535)
	* short int (-32768, 32769)
	* int (-2147483648, 2147483648) 
	* long (-9223372036854775808, 9223372036854775808)
* Decimal types (floating point)
	* float (-1.17549e-38, 3.40282e38) - precision to six digits
	* double (2.22507e-308, 1.79769e+308) - precision to 15 digits
	* long double (3.3621e-4932, 1.18973e4932)

### auto type

Giving a variable a type of `auto` will allow the complier to make the decision for you

### types byte size

the `sizeof(<type>)` method can give you an idea of how many bytes a certain type has


