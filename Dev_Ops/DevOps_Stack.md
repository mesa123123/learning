# Tools for the DevOps Stack

For anyone who hasn't worked with software before, they believe software engineering to be a process of _'write code, push release, walk away'_ from my experience this is justifiable as we live in a world where a select group of companies make it look that way.<br>
However there are hidden complexities of getting software ready to help a business and large software projects can be as complex and messy, and requires constant vigilance over many years to maintain properly.<br>
Software engineers though, REALLY want to be able to just _'write code, push release, and walk away'_ so over the years they have created a set practices and tools that have allowed us to grapple with the many complexities of building and maintaining software and get closer to this point.<br>
These set of practices and tools are DevOps

## Tools in the Stack as they relate to the SDLC

* Requirements
  * User Story and Workflow Management
* Development
  * Version Control Systems - Source Control Managers
  * Local Dev Environment Manager
* Code Review
* Build
  * Build & Compile Tools
  * CI Managers
  * Test Harness
* Deploy
  * CD Managers
  * Change Management Systems
  * Configuration Tools
* Platform
  * Virtualization/Containerization Tools
  * Orchestration Tools
  * Log Shipping
  * Vizualisation Tools

## What problems they solve i.e. how they help

### Development

#### Version Control Systems - Source Control Managers

_Examples: Git, Subversion, BitBucket_

Version control systems were born as a way to solve the problem of "merge hell." This was when many developers all worked on the same application and would make changes to the code base that would conflict with one another, and they would come together to create a unified code base would end up having to fix a massive numbers of code changes. Version Control Systems fixed this in two ways.

1. Acting like a 'checkpoint' feature in a video game where each individual developer could update a remote version of the code base and load and save their changes quickly. This allowed merges conflicts to be resolved quickly as they were often much smaller affecting a few lines instead of whole modules

2. The code base could be split in to smaller 'branches', so developers could make new versions of the code base to create different features, and have a single 'master' branch that could be read as the official version be read by teams further down the pipeline.

#### Local Dev Environment Manager

_Examples: Pipenv, Vagrant, Docker, HyperV_

Modern Software does not exist in a vacuum, it relies on lower level software to be in place before it can run. For example, you cant access the web without a browser, you can't access a browser without an operating system, etc. etc.
This same principle applies to developing software. Each code base will rely on many different pieces of software from many different sources in order to ready a computer a developer can effectively contribute to the code base upon.
This is usually an annoying and time consuming task that does not add value to the software being produced. Local Dev Environments are designed to automate this setup process by virtualizing all of the software needed to get setup the machine for development.
The Environment Manager is similar to a source control in that it keeps a record of what software is needed to do this development and can store this record as a piece of code that can be fed to the manager and create a precisely configured virtual machine for as many developers as needed

TL;DR A local dev environment manager installs all the stuff you need to just start coding without spending hours getting your work laptop ready

#### Code Review Tools

_Examples: Code Brag, Phabricator, Crucible_

These tools are not exactly automated solutions but rather a way to allow for human checking before the code is built into software. They are a way for code committed to the development branches to be reviewed by more senior devs to make sure the code is clean for the code base.
These tools tend to be tightly coupled with source control tools, and are seperate from code linters

### Build

#### Build Tools (also see Bundlers & Task Runners)

_Examples: Gradle, Maven, Ant, Webpack, Grunt, Gulp_
<br>_Note: these examples are lanaguage dependant, each language has its own build tools_

These tools are responsible for tunring the code into working software.
They create the build artifacts through acts such as linking source code and compiling to machine code. They can be configured to build software for different circumstances based on scripts they are given to run during this process.

#### Continuous Integration Managers

_Examples: Jenkins, CircleCI, BuildBot, TravisCI_

A continuous integration manager is a tool that allows changes in the codebase to be available both to the development teams, QA, and deployment down the DevOps pipline automatically, this results in two problems being solved.

##### Problem 1: Constantly Buildable Builds

The CI manager will automatically tun build tools after changes to the development code base and verify that the code can still be built into software without error

##### Problem 2: Constantly Testable Builds

For QA teams they can sidestep the problem of testing out of date code bases without realizing it. They are able to automatically get the latest verison of the software that has been pushed down the pipeline from developers

These tools run on their own servers can be set up to be trigged by events (such as code base changes), scheduled (as in they rebuild daily), or they can be manually triggered by an administrator.

_Note: continuous integration managers often call on many outside tools that do the jobs for it. For example, a CI tool will integrate with version control to monitor code base changes, then call the build tool to execute the build etc._

### Deploy

#### Continuous Deployment/Delivery Managers

### Platform

#### Virtualization/Containerization Tools
_Examples: Docker, AWS ECS, RedHat openShift, GCE (Google Container Engine)_

These tools work similarly to the local dev environment managers, in the sense that they help create a virtual environment server where a single application and its dependencies can run without outside influence and conflicting dependencies interferring with the programs running

This has the advantage of avoiding the "Works on my Machine" problem where, developers create an application on their own machine and then move it to another machine and it not working for a reason no-one can explain. Isolating the applications as granularly as possible allows for this problem to be taken away.

Containerization suceeded virtual machines in the sense that it uses the home OS's kernel and the container wraps around it, this allows for significant performance improvements over virtualization as you don't have to fully reinstall an OS on top of the original machine

##### Images and Snapshots

The concept of virtualization/containerization can be made much more powerful with the idea of snapshots/images.
Snapshots have been decsribed as images in the sense that they are a "snapshot" of a virtual machine in a certain state, at a certain time, so that its users can come back to the snapshot from that point. 
Snapshots work well if the snapshot is built for one user working on a single entity, as it can act as a kind of "checkpoint" where the user can start from where they left off.

###### Images and Snapshots in DevOps

Basically DevOps is about being able to move configurations across environments and scale stuff without changing much and making sure that environments stay as similar as possible so that breaking things dont happen. Which is why images are better suited to the paradigm

Snapshots are have a weakness where they are "mutable" i.e. the file the snapshot exists on can be edited and changed aribitrarily, which if the snapshot has to be deployed onto many systems (such as a development configuration that needs to act as the environment for 15 developers), small arbitrary changes to a snapshot file will completely change the environment.

Images are "immutable" in the sense that once an image has been made it cannot be changed (which means that if the configuation of the vm/container you must create a new image), which means that when a certain machine configuration has to be reused multiple times the image only need be called upon.



#### Orchestration Tools

#### Log Shipping

#### Vizualisation Tools

# Sections to be Integrated

## Continuous Deployment vs Continuous Delivery

* Continuous Delivery is Automating the BUILD, TEST, and STAGE movement down the environment pipeline, taking it all the way to the Change Manager.
* Continous Deployment automates the change manager too, and says yes the tests passed so all is well!

## The Point of 'Cloud Native'

# Tools not covered

* Apache Zepplin
* Airflow
* Kafta
* Elk
* Terraform
* Chef
* Ansible

# References

1. [Docker Image vs Container: Everything You Need to Know - Eric Boersma -
   3/5/19](https://stackify.com/docker-image-vs-container-everything-you-need-to-know/)

_https://devopswithdocker.com/ - Ref 1_
