# Chef Environments

An environment is a way to map an organizations real life workflow (think SDLC) to what can be configured using Chef Infra. This mapping is accomplished by setting attributes and pinning cookbooks at the environment level. With environments, you can change cookbook configurations depending on the systems designation.
For example, by designating different staging and production environments, you can then define the correct URL of a database server for each environment. Environments also allow organizations to move new cookbook releases from staging to production with confidence by stepping releases through testing environments before entering production.

## The Default Environment

Each Infra Server Organization (think domain) must have at least one environment. Each organization starts out with a default environment named `_default`. This environment is immutable, i.e. cannot be modified at all.
Nodes, roles, run-lists, cookbook (and their versions), and attributes specific to an organization can only be associated with a custom environment.

## Pinning Cookbooks in Environments

Cookbook versions can be pinned to each environment, this allows new versions to go through test environments to control their roll-out along the SDLC pipelines

## Environment Creation & Management

### Creation

There are three ways to create an environment:

* A ruby, or JSON file in the environments sub-directory of a chef-repo, and then pushing it to the Chef Server.
* Using [Knife](<./ChefKnife.md> "./ChefKnife")
* Using the Infra Server API

### Management



## Environment Config Files

Environment configurations can be stored as ruby or json files


__TAGS:__
#Chef #Environments

__References__ 
_Chef Docs_
