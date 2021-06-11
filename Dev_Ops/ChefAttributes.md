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

## Attribute building during infra client runs

When an infra client run is established the chef server sends the client a "node object" that stores the data of the of the nodes configuration. When the infra client has run it updates based on:

* JSON data passed via cmd line
* [Cookbooks](<./ChefCookbooks.md> "./ChefCookbooks")
* [Policy Files](<ChefPolicyFiles.md> "ChefPolicyFiles")
* Roles
* Environment
* Recipes
* Any data that the [Ohai tool](<./ChefOhai.md> "./ChefOhai") collects on the node (this would be any configuration that has changed after the last infra run.

## Types of Attributes

Each type of attribute in chef is applied by the infra client differently based on its type. Each type applies a different "hierarchy" that sources the files from different locations.
_Note sources later in the chain will override those set earlier in the chain_

* `default` - Cookbook attribute file > Recipe > Environment > Role
* `force_default` - Cookbook Attribute File > Recipe
* `normal` - JSON file via cmd line > Cookbook attribute file > Recipe
* `override` - Cookbook Attribute File > Recipe > Role > Environment
* `force_override` - Cookbook attribute file > Recipe
* `automatic` - Identified by Ohai > Infra Client Run

![Chef Attribute Precedence Diagram](./overview_chef_attributes_precedence.png "chef attribute precedence")

![Chef Attribute Precedence Table](./overview_chef_attributes_table.png "Chef attribute precedence as a diagram")

__TAGS:__
#Chef #ChefAttributes

__References__
_Chef Docs_
