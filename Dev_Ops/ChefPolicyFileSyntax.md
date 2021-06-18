# Chef Policy File

## Syntax for PolicyFile.rb

The syntax for a policy files should have the following attributes:

* `name "name"`, The name of the policy
* `run_list "ITEM", "ITEM"...` this represents the run-list Chef Infra Client will use to apply the policy to one or more nodes.
* `default_source ${SOURCE_ENUM} "/path/to/source"`, the default location where the cookbooks will reside, just so you don't have to type a source location for every cookbook in a policy. Source enum values: `chef_repo, chef_server, :community, :supermarket, :artifactory` you can use more than one.
* `cookbook "NAME" [,"VERSION_CONSTRAINT"], [, ${ALT_SOURCE_OPTIONS}]`, this is any cookbooks that should be added to the policy, you can specify, and therefore restrict, version constraints and alternative source locations that the cookbook could reside. ALT_SOURCE_OPTIONS include `github: "repo", branch: "example"; git: "repo", tag: "version" etc.` cookbook can have multiple entries but can only specify one per entry


__TAGS:__
#Chef #PolicyFile

__References__
_Chef Docs_
