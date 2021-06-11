# Chef Policy and Policy Files

Policy in chef maps, operational requirements, process, workflow, settings, and objects stored in the chef server.

Aspects of Chef Policy include:

* Role
* Environment
* Cookbook versions
* Run-list

## Role

A role is a way to define job functions within a chef node. Each role contains:

* [Attributes](<./ChefAttributes.md> "./ChefAttributes") (can be 0 or more)
* Run-List (one)

When a role is run against a node, the configuration details of that node are compared to the attributes of the role.

__TAGS:__
#ChefPolicy #Chef

__References__
_Chef Docs_
