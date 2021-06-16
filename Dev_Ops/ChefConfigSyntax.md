# Chef Config File Syntax

This file is a reference point for all the required attributes and syntaxes for all config files
_Note: all files can be in JSON but I've written the ruby because JSON is easier_

## Environment

Each environment should contain the following domain specific attributes:

* cookbook - This acts as a version constraint for a single cookbook e.g.
`cookbook 'couchdb', '< 11.0.4'`
* cookbook_versions - This acts as a version constraint for a group of cookbooks
`cookbook_versions( 'couchdb' => '=11.0.0', 'application' => '~>1.2.0')`
* description - a description of what the environments functionality e.g.
`description "a development environment"`
* name - the name of the environment, must be unique within the organization
(cannot include whitespace) e.g. `name "devbox01-24"`
_Note: Can use cookbook OR cookbook_versions they are mutually exclusive_

And can contain the following are optional attributes:

* default_attributes
* override_attributes

## Role

Each Role should contain the following domain specific attributes:

* name
* description
* run_list

And can contain the following optional attributes:

* default_attributes
* override_attributes
* env_run_lists
_Note: using env_run_lists in roles is difficult to maintain. Multiple Roles is
easier to work with instead_

## Attribute Files

__See More:__ [Chef Attribute Files](<./ChefAttributeFiles.md> "ChefAttributeFiles")

## Recipes



## Policy Files

## JSON

__See More:__ [Chef JSON configs](<./ChefJsonConfigs.md> "./ChefJsonConfigs")

__TAGS:__
#Chef #Config #Syntax

__References__
_Chef Docs_
