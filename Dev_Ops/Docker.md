# Docker (The Technology)

## What is Docker

Docker is a containerization tool that is responsible for defining the modern standard of containerization technology.
Its function is to create, manage, and (with use of [Docker Swarm](./Docker_Swarm.md)) orchestrate containers that run within a computer.
A large set of its technologies are built from the open-source project [Moby](https://mobyproject.org/).

## Dockers Components

The Docker Technology comprises three main parts:

* [The Runtime](<./The Docker Runtime.md> "Docker Runtime")
* The Daemon (a.k.a. the Docker Engine)
* The Orchestrator

The three main components are related thus:

![Docker Architecture](./Docker Architecture.png "Docker Architecture")

## Docker Software

When docker is downloaded on a client (called a 'host' in docker language)
The Software is packaged into two components:

* The Docker Client
* The Docker Daemon (a.k.a. the Docker Engine)

The Daemon package implements the runtime, API, and everything that will eventually make up a dockers server ecosystem, think of the client as more of an interface that a host computer can use to drive and control the containers life cycle

## Images

[Docker Images](<./Docker_Images.md> "Docker Images")

## The Open Container Standards

At present there are two standards for modern containers:

* [image-spec](<../Container_Image_Spec.md> "Container Image Spec")
* [runtime-spec](<../Container_Runtime_Spec.md> "Container Runtime Spec")

The advantage to this standard is that it allows world-wide portability for all containers, thus developers can use the standard and get on with more value-adding work.
See more: [Standardization](<../Standardization.md> "Standardization History")

[Read More Here](https://docs.docker.com/get-started/overview/)

__TAGS:__
_#Docker #Container #Dev_Ops #Virtualisation #VM_

__References__
_Docker Deep Dive; Nigel Poulton_
