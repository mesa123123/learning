# Containers Overview and History

## Pre-VMWare Days

Before the existence of virtual machines companies used physical servers to work with the applications that run their business logic, at this point in time server OS technology
was not advanced enough to run multiple applications safely and stability on one server.

In order to get around this business would buy WAY more server power than they actually needed, thus super powerful servers running at 5% of their capacity were in vogue, as this was
far superior to the alternative of having servers that normally run on 100% and crashing when traffic increases suddenly and then not having a business application running at all...
The down side to this was the terrible inefficiency of having all that redundant power lying around, not to mention a massive waste of resources to acquire and maintain said redundant

## VMWare and Virtual Machines

As a solution to all that redundant hardware the company VMWare inc. came up with the idea of creating a [Virtual Machines](../../Virtual_Machines.md)
This was effectively a way of partitioning a server into multiple OS partitions that were each tricked into thinking that they were running on actual hardware, which was virtualised
through the VMWare technology. This allowed each OS partition (or VM) to run a single business application, thus creating a safe way to have multiple applications on the one server, and reducing the amount of redundant hardware sitting around, and new applications could be placed on servers with extra capacity

### The Drawbacks of Virtual OS

The problem with VMs is that each virtual machine inside the physical server had to reinstall __everything__ this meant the OS also, which has some drawbacks:

* As an OS is a very heavy piece of software this means that the virtual machines themselves took up a lot of computer power & resources that could have been used for running more business applications.
* Also if you were running a proprietary OS this meant licensing fees
* Each OS also requires the time it takes to maintain, patch, monitor etc. from the administrator, which is more lost time in labour costs and expertise that could be used to add business value
* VMs are ultimately very bulky and hard to start-up, shutdown, and move between physical hardware.

Ultimately there was a strong business need to get rid of needing multiple OS's running on the VM, and create a more portable solution

## Containerization and Docker

Containerization is similar to virtualisation, however it instead implements the Hosts OS, this means that a lot of computer power and resource is freed up for the use of business applications.
Also it takes away the need to patch, licence, and monitor many OS's in one physical server as you only have the one.
Given that they are lightweight, they can also be moved, stored, and moved much quicker

Though there are virtualisation technologies that perform similar functions to modern containers. However modern containers really began with the [Docker System](../Docker.md)

## See Also

### Technologies that enabled modern containerization

* kernel namespaces
* control groups
* union file-systems

__TAGS:__
_#Book #DevOps #Containers #VM #VMWare_

__References__
_Docker DeepDive: Zero to Docker in a Single Book; Nigel Poulton_
