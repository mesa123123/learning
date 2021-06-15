# Chef Roles

A role is a way to define job functions within a chef node. Each role contains:

* [Attributes](<./ChefAttributes.md> "./ChefAttributes") (can be 0 or more)
* Run-List (one)

When a role is run against a node, the configuration details of that node are compared to the attributes of the role.

_More than one role can be assigned to a node, think of them as what work would call `hats` rather than a full JD_

### Role Attributes

__See:__ [Chef Attributes](<./ChefAttributes.md> "./ChefAttributes")


__TAGS:__
#Chef #Roles #Policy

__References__ 

