# Types of file storage in hadoop
## HFDS
Static File System
## Kudu
Relational Database (may not be run by apache?)
## Hbase
NoSQL Storage

# Spark
Is the sucessor to Map Reduce, which is the 'programming/processing' engines
to the hadoop clustered file system

# Essential Points Chapter 2:

* Hadoop is a framework for distributed data storage and processing
* This course focusses on creating solutions that use
	* Apache Spark for computational processing
	* Hadoop YARN for cluster resource management
* Hands on Exercises will let you practice and refine your spark and hadoop
  skills

# How Hadoop Files are Stored
 * The name node daemon is on the master node
 * They have the metadata for each filename and the blocks that contain that files data
 * It also keeps infromation about where the blocks are within the various slave nodes (data nodes)

## How to access Hadoop Data
	* Spark can do it through the url 

_HDFS has no concept of a current directory, but does has a home folder for each of the users home directories, so everything has to be put in terms of your home directory_
_in other words, your directory calls are always relative to your home directory_

## Commands for dealing with HDFS 'files'
	* Most linux commands can work from what the lady has been saying
	* prefix thost with hdfs dfs
	* also put and get are now copyfromlocal and copytolocal

# hdfs becoming hdfs dfs
This used to be just hdfs, but they've added dfs so hadoop can work with other utilises :)

# hdfs trash
After deleting something in hdfs, there (if the trash option is enabled) is a .trash folder in the file system that exists for 24 hours (or whatever its been set to) in the folder that the deleted file was orginally in

# Yarn
## What is YARN?

## YARN daemons

* Resource Manager
* Node Manager


## Yarn architecture for running applications

There are:
 * Resource Managers
 	* These directly 'talk' to your app
	* You interface with this node
 * The Application Master
 	* This is the container (think docker) which issues commands to processes on the cluster
	* It has a 2-way communcation with the resource manager
	* It 'asks' for the resources it needs and is then gifted them by the resource manager
 * Executor Containers
 	* These are where application processes run on the cluster
	* They are issued commands by the application master
	* This communication is one way though

_#LOOKUP Node Managers, Data Nodes, Name Nodes, Resource Managers, Gateway Node_ 

# The Functional Programming Paradigm

Functional programming is a way of looking creating a programme that involves two main parts

* The Retrieval and Return, or getting data in and out (I/O)
* The Transformations that turn the data from the raw to the refined

## Functional Programming as a Factory (Metaphor)

In a factory raw materials are placed into the production line, various machines in the production line perform tasks to transform the raw materials
into a finished product, and then the finished product is moved out of the factory

A functional programme is similar but the raw materials are raw data input to the programme, the functions that transform the data
are the machines or workstations in the factory that refine this raw data, and the finished product is the refined data needed from the programme.

_[Further Reading Here](https://www.reddit.com/r/functionalprogramming/comments/hs86bu/how_do_i_think_in_a_functional_language/)_

In order to do this and do it effectively programme languages made for this style need to follow certain rules

## Key Concepts of Functional Programming

* Functions are the fundamental unit of what does the programmes work
* Functions have input and output only
  * The programme overall is 'stateless'- which (along with other things)  means you cannot change the value a variable is assigned to, you can only create a new variable; the big advantage to this is __there are more ways to put the individual pieces of the programme together without it breaking.__ This gives certain advantages:
    * Concurrent programming is much easier (in the sense that if two people are completing one half of a task each, the task is a lot simpler if one isn't editing the others work)
    * Debugging is less painful, as you do not need to guess which variable had what value at whenever time.
  * Functions have no side effects - which is best explained by [Eric Elliot](https://medium.com/javascript-scene/master-the-javascript-interview-what-is-functional-programming-7f218c68b3a0) as a function that:
    * Does not change any variable outside of ones its made
    * Does not write to:
      * Console
      * Files
      * Network
    * Does not trigger any external process
    * Does not call any function with side-effects
* Functions can be passed as arguments to other functions
  * A.K.A. _procedural functions_

### On Functions w/o side effects

According to the above, a function without side effects will by definition not be able to write data, which is a problem as its a very common use case.
Programming languages get around this hurdle by borrowing from this style of programming language rather than fully embracing it, however programmes that are fully functional use an idea from mathematics called 'Monads'

Further Reading Monads:

* [Wikipedia: Monads](https://en.wikipedia.org/wiki/Monad_(functional_programming))
* [Further Info on Monads Conceptually](http://adit.io/posts/2013-04-17-functors,_applicatives,_and_monads_in_pictures.html)
* [Stack Overflow Forum: Monads](https://stackoverflow.com/questions/44965/what-is-a-monad)


## Why use functional programming with spark

Spark is built to handle big data, which by definition uses distributed computing, which by definition uses concurrency. As concurrency is handled better by with a functional approach to programming, functional languages are better suited for the task.

_Further Reading Functional Programming:_

* [Reddit Thread: How do I think in a Functional Language](https://www.reddit.com/r/functionalprogramming/comments/hs86bu/how_do_i_think_in_a_functional_language/)
* [Functional Programming For The Rest of Us](http://www.defmacro.org/2006/06/19/fp.html)
* [Why Functional Programming Matters](https://www.cs.kent.ac.uk/people/staff/dat/miranda/whyfp90.pdf)

# NOW TIME FOR SPARK 

_Data frame and data set apis are within the Spark.SQL Library_

Shells for spark are typically run on the gateway node

A good dev pattern, is to run the code locally first and then onto the cluster, helps in diagnosing runtime errors

And you can run the shell specifically on the cluster using: --master <resource manager>
_#LOOKUP Apache Zepplin_

Sparks core datastructure is the RDD, this can be access through the shell (which uses a spark session) through the spark context object(interface?)

_#LOOKUP Datasets (NOT DEFINED IN PYSPARK AS THEY ARE STRONGLY TYPED) vs. Dataframe_

# Data Frames
__Data frames and a data set of row objects are essentially the same.__
There is a schema that maps the columns onto their various row values
The schema can print out the column names and the data types that are mapped to the columns

Lazy execution, it doesn't do anything until it an action is called, in which then it creates its plan and runs its commands
from there (often people will run .count() methods [ an action with low overhead ] in order to execute transformation etc)

Unlike Pandas, dataframes are immutable - transformations make new dataframes (in the background)
Because of the lazy evaluation, chaining transformation options doesn't change execution time

# Resilient Distributed Datasets

The RDD was part of the earlier versions of spark (therefore not a part of the spark.sql package [unlike dataframes]) They are less structured than their dataframe counterparts.
There remains a few [still relevant] good use cases for RDDs. For instance entering unstructured data into the spark ecosystem, where the user can then better structure the data, before moving it into dataframes and datasets.
There are also use cases which use Map-Reduce Jobs where RDDs, outperform other Spark data structures.

The idea behind the Resilient Distributed Dataset was that it could

* recreate lost data (Resilient)
* process computation across a cluster (Distributed)

## Comparing RDD to its Spark.SQL counterparts (Dataframes, Datasets)


## Query

A query is defined as a set of transformations with one action

## Note:
_#LOOKUP parquet files, optimized binary storage of structured data. VERY EFFICIENT_

## Spark read function

returns a dataframe_reader object, which in contrast to load means you can format the dataframe that is returned, load is a bit more concise but also there is a sacrifice of control? _#LOOKUP difference between spark.load v spark.read_

the read function can be placed as read.format(<"filetype">).load(<"filename">)
there are also 'convenience functions' that work for certain file types e.g. read.json or read.csv

* The file specified can use multiple files, and wild cards within a directory O_O, or even the directory itself O_O O_O
* You can use relative and absolute urls, e.g. hdfs://name_node_host/pathway/file.extension etc.

### Read from a HIVE table

spark.read.table(<"hive table name">)
will read the table from the hive metadata, and its inferred schema from the hive (provided that hive support is enabled and configured with the Hive warehouse through HDFS

### Creating Dataframes from Ad Hoc Data

You can use spark.createDataFrame(<scala.List || otherwise>)

## Notes on Lazy Executions

Spark may or may not specify that it will be executing lazily or not, from what I've seen so far (Wednesday afternoon) this is by DataStructure?

# FOR THE PWC DATA COMPLETENESS

Look at a map-reduce idea in order to get those splits perfect ;)
Sorry FLat-Mapping; You're welcome








