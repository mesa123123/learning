# Directed_Acyclic_Graphs

A directed acyclic graph is a concept in mathematics and computer science, it is a type of [directed graph](<directed_graph.md> "directed_graph") where the direction of the vertices and edges can never form a closed loop within a graph (also known as a [directed cycle](<directed_cycle.md> "directed_cycle").
A graph can fit the definition of being directed and acyclic if it can be [topologically ordered](<topologically_ordered.md> "topologically_ordered").

## Applications in computer science

The applications for DAGs are vast, in computer science they are especially useful as a data structure for scheduling when there is a need for certain tasks to happen before others. Another great application of this is a dependency graph, where a circular dependency (a dependency that depends on another dependency) is found.
There are also applications ranging form data compression through to Bayesian networks where certain tasks need to happen at precise times

Also data pipeline scheduling tools like [Airflow](<./Apache_Airflow.md> "./Apache_Airflow") use dags in order to deal with complex interrelated tasks

__See More:__ [Scheduling](<computer_task_scheduling.md> "computer_task_scheduling")
__See More:__ [Apache_Airflow](<./Apache_Airflow.md> "./Apache_Airflow")
__See More:__ [Dependency Graphs](<./software_dependencies.md> "./software_dependencies")
__See More:__ [Bayesian Networks](<./bayesian_networks.md> "./bayesian_networks")


__TAGS:__
_#DataStructures #Graphs #GraphTheory #ApacheAirflow #DevOps #DataPipelines #WorkflowsAsCode #AsCode #Directed_Acyclic_Graphs_

__References__
_airflow official documentation_
