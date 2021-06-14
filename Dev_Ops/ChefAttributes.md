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

* `automatic` - Identified by Ohai at the start of every Chef Infra Client Run, this attributed cannot be modified.
* `normal` - a standard attribute in chef that is not reset between Infra Client Runs, they are attributes that persist on the node they are configured on
* `default` - use these as often as possible in cookbooks, these attributes are automatically reset at the start of every Infra Chef Client run.
* `force_default` - used in recipes to make sure that environment or role policy cannot override the attribute
* `override` - An override attribute has a higher precedence than `default` or `force_default`, can be outlined in a environment or role config
* `force_override` - similar to `force_default` but on the level of override, can only be outlined in a recipe.

### Attribute Precedence

The precedence for attributes generally applies here:

Automatic -> force_override -> override -> normal -> force_default -> default

This general format is a bit more nuanced as each of these attribute types appear and are configured in different places

### Attribute Source Order

Each type of attribute in chef is applied by the infra client differently based on its type. Each type applies a different "hierarchy" that sources the files from different locations.

* `default` - Role, Environment, Recipe, Cookbook attribute file
* `force_default` - Recipe, Cookbook Attribute File
* `normal` - Recipe, Cookbook attribute file, JSON file via cmd line
* `override` - Environment, Role, Recipe, Cookbook Attribute File
* `force_override` - Recipe, Cookbook attribute file
* `automatic` - Infra Client Run, Identified by Ohai

![Chef Attribute Precedence Diagram](./overview_chef_attributes_precedence.png "chef attribute precedence")

![Chef Attribute Precedence Table](./overview_chef_attributes_table.png "Chef attribute precedence as a diagram")

## Attribute Sources

### From Recipes

[See Recipes](<./ChefRecipes.md> "./ChefRecipes")

An attribute can be defined in a cookbook or a recipe and then used to override the default settings on a node. When a cookbook is loaded during a Chef Infra Client run, these attributes are compared to the attributes that are already present on a node. Attributes that are defined in attribute files are first loaded according to cookbook order. For each cookbook,  the attributes in the `default.rb` file are loaded first, then any additional attribute files are loaded, in [lexical sort order](<https://en.wikipedia.org/wiki/Lexicographic_order> "https://en.wikipedia.org/wiki/Lexicographic_order")
When Cookbook attributes take precedence over the default attributes, Chef Infra Client applies those new settings and values during a Chef Infra Client Run on the node.

### From Roles

__See More:__ [Chef Roles](<./ChefRoles.md> "./ChefRoles")

A role is a way to define certain patterns and processes that exist within the organization (think a set of tasks pertaining to a job or a `hat` that makes up a part of someone's JD).

An attribute within a role overrides the default settings in a node (default settings are those defined by the `default.rb` recipe file. These are defined as `override_attributes` and will take precedence over the default attributes. A role attribute can only take the form of a `default_attribute` or `override attribute`

### From Environments

__See More:__ [Chef Environments](<./ChefEnvironments.md> "./ChefEnvironments")

An environment is a way to map an organizations real life workflow (think SDLC) to what can be configured using Chef Infra. This mapping is accomplished by setting attributes and pinning cookbooks at the environment level. With environments, you can change cookbook configurations depending on the systems designation. For example you can connect the right database for each environment depending on where a node is in the workflow.

#### Environment Configs

__See More:__ [Environment Config File](<./ChefEnvironments.md> "./ChefEnvironments")


__TAGS:__
#Chef #ChefAttributes

__References__
_Chef Docs_
