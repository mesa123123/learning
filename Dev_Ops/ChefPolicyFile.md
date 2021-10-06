# Chef Infra Policy File

## About

A policy file is a way to have a aggregate source to manage and constrain environment, role, and community cookbook data and version on a single file to be recognized by the Chef Infra Client (this is an optional pattern). This files run list is picked up when a chef infra client is run

## What's the point?

Policy Files are an easier interface to deal with the interactions between many sources of configuration within the chef ecosystem. Which the intent behind is to create code that is easier to test and safer to to deal with.
Some Benefits include:

* Focus the workflow of the entire system - policy files look at the entire system rather than individual components rather than just parts of it e.g. role or environment configs
* Safer Development Workflows - As the policy file will prevent an updated cookbook or role being applied to all machines, as both roles and cookbooks are mutable you can constrain them using a policyfile, which will not mess around
* Less expensive computation
* Code visibility - The combination of the policy fie and its `.lock.json` equivalent (see below), provide a kind of "single source of truth," which allows the Chef Infra Client to run around that policy
* Role visibility
* Cookbook mutability

## PolicyFile.lock.json

#TODO

## Syntax for PolicyFile.rb

The syntax for a policy files should have the following attributes:

* `name "name"`, The name of the policy
* `run_list "ITEM", "ITEM"...` this represents the run-list Chef Infra Client will use to apply the policy to one or more nodes.
* `default_source ${SOURCE_ENUM} "/path/to/source"`, the default location where the cookbooks will reside, just so you don't have to type a source location for every cookbook in a policy. Source enum values: `chef_repo, chef_server, :community, :supermarket, :artifactory` you can use more than one.
* `cookbook "NAME" [,"VERSION_CONSTRAINT"], [, ${ALT_SOURCE_OPTIONS}]`, this is any cookbooks that should be added to the policy, you can specify, and therefore restrict, version constraints and alternative source locations that the cookbook could reside. ALT_SOURCE_OPTIONS include `github: "repo", branch: "example"; git: "repo", tag: "version" etc.` cookbook can have multiple entries but can only specify one per entry


__TAGS:__
#ChefInfra #Chef #PolicyFile

__References__
_Chef Docs_
