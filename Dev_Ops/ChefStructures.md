# Chef Structures and Building Blocks

These building blocks form the ruby code that chef will use to build up a configuration management suite for the infrastructure

## Resource

These are chefs most basic components, and define a setting that a node or configuration can take. Examples include
| Name | Definition |
|---|---|
| execute | Specifies are command for the node to execute |
| package | Manages installed packages/programmes |
| service | Manages services that run on the node |
| cron | Manages the timed cron jobs on the node |
| users | Manages the nodes users |
| group | Manages groups of the node's users |
| file | Manages files/their contents on the node |
| directory | Manages the nodes directories |
| template | Uses an [embedded Ruby Template](<ChefTemplate.md> "ChefTemplate") to manage the node |
| cookbook_file | transfers files specified in a cookbook's subdir to the node |

## Attribute

This is chefs word for settings, they can be thought of as a key-value pair of anything one would want to use in a cookbook, different types of attributes take different levels of precedence depending on their source.

__See More:__ [Chef Attributes](<ChefAttributes.md> "ChefAttributes")

## File

Chef thinks of this as a subdirectory within the cookbook that contains any static file that will be implemented on the nodes that call the cookbooks. This subdirectory can then be called by a file resource

## Recipe

This takes the form of a Ruby file that is a collection of attributes/resources that will manage the infrastructure. When the chef client is run the recipe's desired configuration is compared with the current state of the node (even if it is a blank state), and then corrects discrepancies.

## Cookbook

A collection of recipes, they are uploaded to the Chef server in order to be evaluated against their correct nodes

__See More:__ [Default Cookbook Structure](<ChefDefaulCookBookFileSystem.md> "DefaulCookBookFileSystem")

## Template

These are written in Ruby and unlike their Recipe counterparts do not need to conform to Chef's DSL language. A common use case for this is to dynamically substitute attribute files when they are placed on the node in final form

## Metadata.rb

As the name suggests this file manages metadata about the package. It also contains dependency information for its cookbook in order to build Run-Lists correctly

__TAGS:__
#Chef Structures and Building Blocks 

__References__
_tutorialspoint.com/chef_
