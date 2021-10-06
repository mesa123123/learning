# Chef Infra Run Lists

A run-list defines all of the information necessary to configure a node into the desired state. A run-list is:

* An ordered list of roles and/or recipes that are run in the exact order defined in the run-list (each recipes/role is run just once).
* Though a run-list can be used by more than one node, a run list is always specific.
* Maintained using knife and then uploaded form the workstation to the Chef Infra Server (or maintained using chef automate).

The commands in [knife](<./ChefKnife.md> "./ChefKnife") that are associated with run_lists are:

* `run_list add`
* `run_list remove`
* `run_list set`
* `knife status --run-list`

__TAGS:__
#Chef #ChefInfra

__References__
_Chef Docs_
