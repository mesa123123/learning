# The Docker Runtime

The Runtime is primarily responsible for starting and stopping containers (along with all related constructs, see [OS Namespaces](<../OS_Namespaces.md> "OS_Namespaces") and [OS cgroups](<../cgroups.md> "cgroups")).

There are many tiers (both high level and low level) to the runtime that operate together to help these processes.

* The lower tier runtime (named runc) is an implementation of the Open Container Initiative, which is a governing body for container standards (see [Runc Reference](<../Runc_Reference.md> "Runc Reference") & [The Open Container Initiative](<../Open_Container_Initiative> "Open_Container_Initiative")) to learn more.
* The higher tier runtime is named containerd, and handles the bulk of the operations. Containerd is used by both Kubernetes and Docker as a container runtime technology. See [Containerd](<../Containerd.md> "Containerd Notes")

__TAGS:__
_#Docker #Containerization #VM #Dev_Ops_

__References__
_Docker Deep Dive: Nigel Poulton_
