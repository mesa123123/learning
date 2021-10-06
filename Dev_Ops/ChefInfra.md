# Chef Infra

Chef Infra is the "infrastructure as code" portion of the chef tool set, it is a tool that allows a user to maintain large numbers of computing nodes from [recipes](<ChefRecipes.md> "ChefRecipes")within a [cookbook](<ChefCookbooks.md> "ChefCookbooks")

## Infra's Architecture

Chef Infra works on a 3-tier architecture, its interaction is between:

* Chef-Workstation
    * This is the software that runs on the developers computer and configures the recipes and cookbooks that the server will send out to the Nodes
* Chef-Server
    * This is the command deck of the chef architecture the chef server takes the recipes/cookbooks from the workstations and uses them to configure the nodes in which the configured services run
* Chef-Nodes
    * These are the configured servers that run the business logic and applications specified in the recipes/cookbooks.
    * Nodes can have many different configurations, environments, roles, etc.
    * All nodes have the [Chef Client Software](<ChefClients.md> "ChefClients") which acts to retrieve the config from the Server and enact the necessary configurations.
    * All nodes also have [Ohai](<Ohai.md> "Ohai") which keeps an eye on the configuration at any point in time (configuration does drift as the node runs).

![Chef Architecture Diagram](./ChefArchitecture.jpg)

__TAGS:__
#Chef

__References__
_tutorialspoint.com/chef_
