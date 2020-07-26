# Data Engineers Handbook Notes
## Chapter 2
### Different Data Interchange Formats

#### CSV: Comma Separated Value files (Or Comma-Delimited Files)

_Works Well When_
When there is a fixed number of columns and the rows all have the same type of data for every column (in other words data type does not need to be explicitly set)
For Example:
	* A long list of records, which remain consistent in structure
		- Weather
		- Stock prices
	* If the users are going to use the data as a table

CSV is also very lightweight, as only the columns and header row (if there is one) is not data

_Drawbacks_
Runs into problems when trying to represent data with a more complex/flexible structure
For Example:
	* A CSV file could not accurately transmit a single file about multiple movies cast and crews, without the data becoming bloated on inefficencies, or needing a column that says "DATA TYPE" or similar to help a human discern the knowledge needed to obtain insight from the data
:
