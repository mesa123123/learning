# Chef Infra Attribute Files

Located in the `attributes/` subdirectory for a cookbook. The attributes in this file are evaluated against the context of the node (given environment, roles etc. [See Attribute Precedence](<./ChefAttributes.md> "./ChefAttributes") ).

## Syntax

As the attribute file implicitly evaluated in the context of the node, there is no need to write the `node.<attribute>` syntax in the file.
So instead of `node.default['apache'['dir']` you can simply put `default['apace']['dir']`

## Unless Keyword

A less common pattern is to set the value only if there is no value that the attribute has. This is done using an `unless` keyword.

E.g. `default_unless`

This pattern is uncommon as it can create config drift from the cookbooks

__TAGS:__
#Chef #ChefInfraPolicy_#ChefInfra

__References__

