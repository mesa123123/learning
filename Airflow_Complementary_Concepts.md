# Airflow Complementary Concepts

## Hooks

These are the tool that [Airflow Operators](<./Airflow_Operators.md> "./Airflow_Operators") it interfaces with an external application to request data from it.
A large set of these come built in to the airflow platform

__See More:__ [List of Airflow Hooks](<https://airflow.apache.org/docs/apache-airflow/stable/_api/airflow/hooks/index.html> "List of Airflow Built in hooks")

## Pools

Pools are a way of limiting the number of tasks that airflow can compute in parallel, these are implemented through giving a pool a number of [worker slots](<./airflow_worker_slots.md> "./airflow_worker_slots"), and then tasks are then assigned with the pool when the said tasks are defined in code. Check `Menu -> Admin -> Pools` in the UI.

## Connections



## XComs

## Branching

## SubDAGs

## TaskGroups


__TAGS:__
_#ApacheAirflow #DevOps #DataPipelines #WorkflowsAsCode #AsCode #AirflowComplementatryConcepts_

__References__
_[Airflow Documentation](<https://airflow.apache.org/docs/apache-airflow/stable/concepts.html#workflows> "https://airflow.apache.org/docs/apache-airflow/stable/concepts.html#workflows")_
