# Apache Airflow

Airflow is a platform that programmatically automates, schedules, and monitors workflows it works both through the UI interfaces and through a "work flow as code" solution

It is not a data streaming solution, activities do not swap data, tools like [Spark Streaming](<./Spark_Streaming.md> "Spark_Streaming") integrate with airflow to perform that task

## Dags - Directed Acyclic Graphs

Workflows are created ("authored") using a structure based on the concept of [Directed Acyclic Graphs](<./Directed_Acyclic_Graphs.md> "Directed_Acyclic_Graphs or Dags").

## Principles

The principles on which airflow are designed are to make the tool dynamic, extensible, elegant, and scalable

__See More:__ [Airflow Principles](<./Airflow_Principles.md> "Airflow_Principles")

## Installation etc

see the [Official Airflow Docs](<http://airflow.apache.org/docs/apache-airflow/stable> "Airflow Official Documentation") for more

## Airflow Core Concepts

The core concepts of airflow can be broken into three main ideas

### Airflow DAGS

DAGS in an airflow context are named after the data structure they represent but there are a few caveats within the context of airflow that are pertinent, especially when it comes to the definition vs the implementation.

More here: [Airflow DAGS](<./Airflow_DAGS.md> "./Airflow_DAGS")

### Tasks

Tasks in airflow are the 'what' behind the 'when' that airflow specifies. A 'task' in the context of airflow is a unit of work that is defined within a DAG and is represented as a node in the UIs conceptual model. A task is an implementation of an operator.

More here: [Airflow Tasks](<Airflow_Dag_Tasks.md> "Airflow_Dag_Tasks")

### Operators

An operator in airflow, much like a blueprint for a house is the 'how' the task should do the 'what' defined by the 'when' of airflow.

More Here: [Airflow Operators](<./Airflow_Operators.md> "./Airflow_Operators")

### Airflow Complementary Concepts

These concepts help the three core structures and functionality of airflow to extend its capabilities beyond basic functionality

[Airflow Complementary Concepts](<./Airflow_Complementary_Concepts.md> "./Airflow_Complementary_Concepts")

__TAGS:__
_#ApacheAirflow #DevOps #DataPipelines #WorkflowsAsCode #AsCode_

_References_
_airflow.apache.org/docs/_

