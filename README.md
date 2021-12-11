# whiff
whiff - a better which for when which whiffs

Usage: **whiff -asp**

The **whiff** utility takes a list of command names and first searches the path for each executable file that would be run had these commands actually been invoked. If it finds none, it searches the filesystem for all executables the user has permission to execute.

#### OPTIONS
* -a

List all instances of executables found (instead of just the first one of each).
* -s

No output, just return 0 if all of the executables are found, or 1 if some were not found.
* -p

Limit search to $PATH, just like **which**
#### AUTHOR
The **whiff** utility was written in shell script by Jon-Erik Storm <jonerik@gmail.com>.
