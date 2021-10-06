# Pip Constraint Files

Pip constraint files are a type of config file that pip uses to identify what versions of dependent packages are necessary for the software to run, it narrows the pip dependency resolver scope down to just the dependency versions that will work with the software, that is being created. It is stored as a ./constraints.txt file in the project directory.
The constraints file acts as a kind of child file to requirements.txt as it is referenced using the `-c constraints.txt` command as a line in the requirements.txt file

## Requirements.txt vs. Constraints.txt

The constraints file has less relation to the packages actually installed in the development environment and provides more of a guideline as to which packages/versions are necessary for the software to run properly (this is also handy for projects that may be created to run on both py2 and py3 or even different python interpreters).

__TAGS:__
_#Pip #Python #PipConfig #PackageManagement #DependencyManagement_

__References__
_ [Stack Overflow Answer](<https://stackoverflow.com/questions/34645821/pip-constraints-files#:~:text=Constraints%20files%20are%20requirements%20files,nearly%20identical%20to%20Requirements%20Files.> "Stackoverflow answer")
