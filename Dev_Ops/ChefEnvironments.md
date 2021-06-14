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

* A config file in the environments sub-directory of a chef-repo, and then pushing it to the Chef Server.
* Using [Knife](<./ChefKnife.md> "./ChefKnife")
* Using the Infra Server API

### Management

There are 2 ways to manage environments once they've been created:

* Using [knife](<./ChefKnife.md> "./ChefKnife"), and passing the `-E` switch
* Through config files stored in version control repos (this is pushed to the infra server using the `knife environment` subcommand which will allow a dynamically generated environment)

These two approaches are mutually exclusive, and only recent environment changes will be kept on the Chef Infra Server, regardless of how those changes are pushed.

## Environment Config Files

Environment configurations can be stored as ruby or json files stored in source control
__For Syntax and Required Attributes See:__ [Chef Config Syntax](<./ChefConfigSyntax.md> "./ChefConfigSyntax")

__TAGS:__
#Chef #Environments

__References__ 
_Chef Docs_
