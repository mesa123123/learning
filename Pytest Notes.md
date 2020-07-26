# Unit Testing with Pytest - [Youtube Video](https://www.youtube.com/watch?v=bbp_849-RZ4)

_Note: unit testing is testing granular levels of code i.e. a class method_
## Naming Test Files
__In general name test files using 'test_name_of_module_tested'__
<br> Also use 'test_' as a prefix to functions that execute tests with the test file

* This allows for pytest to understand where tests are when the command py.test is run from the ROOTDIR


## Test Functions 
* Work like regular functions in python, i.e. they take default values etc.

## Changing the Way to Run Tests

### Categorizing Tests - Decorators
Decorators take the form:<br>
```python
   @pytest.mark.decorator_name
   def test_function_name():
```

#### Running a decorator
These have the purpose of being able to filter the tests you want to run you can filter these tests via the ` -m decorator_name` command switch when you run the tests.

### Skipping Tests
Using the special decorator:
```python
		@pytest.mark.skip(reason="Reason for skiping")
		def test_that_i_want_to_skip
```

The test will be skipped when the test suite is run.<br>
_Note: in order to have the skipped test print out its reason you need to add the command line switches `-v` and `-rsx` to the command line call for pytest_

#### Conditional Skipping
The first arguement that the `pytest.mark.skip` annotation takes is a condition on whether or not the test will skip, by default this is set to `false` so it skips by default

```python
		@pytest.mark.skip(condition_that_if_true_is_skipped, reason="Reason for skiping")
		def test_that_i_want_to_skip
```

## Pytest Command Line Switches

### More Verbose Output
Like most CLI tools use the `-v` command line switch to allow output to become more verbose

### Exit on failure
the command line switch `-x` stops pytest from running when it encounters an error, and will print out the error messages

### Exit after n failures
The `--maxfail=n` command line switch stops the tests from running after n tests have reported a failure

### Stack trace on Error
The command line swtich `--tb=no` takes away the stack track for failed tests in the report this allows only the statistics for pass and failure after the tests have run

### Allow for system printing out
The command line switch `-s` allows sysout print statements to be executed from within the tests. You can also use `--caputure=no`

### Quiet Mode
If you only want the aggregate data from tests you can add `-q` to show you simply:
- How many tests are passed
- How many tests failed

## Parameterized Tests
### How to make one
The annotation `@pytest.mark.parameterize(**args, expected_result, iterable_data)` allows you to create parameterized tests for pytest.
### What this means
For the number of arguements `**args` for the function under test, you give each one a specific name that will be copied within the `test_function`'s parameters
The `expected_result` will also be passed to the `test_function` definition.
<br>_note: both the `args` and `expect_result` combine together to make a single string._<br>
The `iterable_data` is a list of tuples that will take the form [(**args, expected_result)] for each member of the iterable data list
### For Example:

The non-paramterized function:
```
	def test_function():
		assert(data1.1, data1.2) = result1
		assert(data2.1, data2.2) = result2
```
Becomes the parameterized function:

```
	@pytest.mark.parameterize('input1, input2, result', [(data1.1, data1.2, result1),
													\	(data2.1, data2.2, result2)]	
	def test_function(input1, input2, result):
		assert(input1, input2) = result
```


## Look up: Tear Down and Setup, he explained that shit weird man...


## Pytest Fixtures - an alternative to setup/teardown
The annotation `@pytest.fixture` is an annotation that you give to a function defined with a test_module in order to have a certain amount of code run before tests.

To seperate between the before test suite code and after the test suite code you can use the `yeild` keyword within the fixture function:

```python
	@pytest.fixture
	def function_fixture():
		code_that_i_need_to_run_before_test_suite
		yeild stuff_needed_for_tests
		code_that_i_need_to_run_afterward
```

### Fixture Scopes
An important arguement that a `@pytest.fixture` takes is scope this can allow you to change the fixture to run before every test or before each test:

* `@pytest.fixture()` will run before each test
* `@pytest.fixture(scope=module)` will run before all the tests but not inbetween them









