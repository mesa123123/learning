# Chef Attributes

An attribute is a specific detail about a node.
These tell the chef infra client server three things:

* How the node was configured last time the infra client ran
* How the node is currently configured (i.e. how much its changed since last build).
* How the node should be configured at the end of this run

## Defining Chef Attributes

Attributes are defined on:

* The node itself
* JSON passed via the command line
* [Cookbooks](<./ChefCookbooks.md> "./ChefCookbooks")
* [Policy Files](<ChefPolicyFiles.md> "ChefPolicyFiles")



__TAGS:__
#Chef #ChefAttributes

__References__
_Chef Docs_
