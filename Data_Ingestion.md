# Data Ingestion

Data Ingestion is the act of taking data from many source systems and aggregating them into a (usually more structured) data store to be used for better value adding tasks, it could be used as a buzzword for the 'Extract' (and traditionally 'Load') part of an [Extract, Transform, Load](<./ETL_Data_Pipeline.md> "ETL_Data_Pipeline").

Data ingestion can be considered one 'layer' of a data pipelines processes

## Types of Ingestion

Depending on the data set, structure, and sources, the optimal way to ingest data may change.
Two such approaches are detailed below:

### Batch Ingestion

This is the most common type of ingestion where periodically the pipelines ingestion layer pulls a batch of data from the source systems, 'grouping' the data by a logical partition (one of the most basic being the time in which the data was last created/updated) and transfers the batch to 'downstream' layers of the data pipeline.

This is an easy and cheaply implemented method of ingestion, however it is only relevant to the period in which the batch is processed, e.g. a daily batch processed at midnight could be up to a day old.

### Streaming Ingestion

Where real-time data is more pertinent than cost or ease of implementation, streaming ingestion is an alternative, this requires constant monitoring of the source systems,  sending any created/updated data through the pipeline constantly. This makes it more resource heavy than its batch counterpart, as every piece of data is processed as an individual granular unit.

### Micro-Batching

This is a mix of the two approaches however uses a similar approach to batching with very small batches and very small intervals, but does not work on anything close to individual data points.

For more on this see:
[Data Warehouse](<./Data_Warehouse.md> "Data_Warehouse")
[Data Pipeline](<./Data_Pipelines.md> "Data_Pipelines")

## Examples of Data Ingestion Tools

* Singer
* Stitch
* Fivetran

Note: Some of these tools will also have 'transform' capabilities, however its best to keep front of mind the separation of concerns

__TAGS:__
_#Data #DataIngestion #DataPipelines #DataPreprocessing_

__References__
_Data Pipelines Pocket Reference_
_Stitchdata.com Data ingestion: the first step to a sound data strategy_
