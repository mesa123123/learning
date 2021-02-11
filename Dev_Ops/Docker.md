# Docker (The Technology)

## What is Docker

Docker is a containerization tool that is responsible for defining the modern standard of containerization technology.
Its function is to create, manage, and (with use of [Docker Swarm](./Docker_Swarm.md)) orchestrate containers that run within a computer.
A large set of its technologies are built from the open-source project [Moby](https://mobyproject.org/).

## Dockers Components

The Docker Technology comprises three main parts:

* The runtime
* The Daemon (or engine)
* The Orchestrator

The three main components are related thus:

![Docker Architecture](./Docker Architecture.png "Docker Architecture")

## The Runtime

The Runtime is primarily responsible for starting and stopping containers (along with all related constructs, see [OS Namespaces](<../OS_Namespaces.md> "OS_Namespaces") and [OS cgroups](<../cgroups.md> "cgroups")).

There are many tiers (both high level and low level) to the runtime that operate together to help these processes.

* The lower tier runtime (named runc) is an implementation of the Open Container Initiative, which is a governing body for container standards (see [Runc Reference](<../Runc_Reference.md> "Runc Reference") & [The Open Container Initiative](<../Open_Container_Initiative> "Open_Container_Initiative")) to learn more.
* The higher tier runtime is named containerd, and handles the bulk of the operations. Containerd is used by both Kubernetes and Docker as a container runtime technology. See [Containerd](<../Containerd.md> "Containerd Notes")

[Read More Here](https://docs.docker.com/get-started/overview/)

__TAGS:__
_#Docker #Container #Dev_Ops #Virtualisation #VM_

__References__
_Docker Deep Dive; Nigel Poulton_
