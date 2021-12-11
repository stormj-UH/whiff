#!/bin/sh/
# Load the command line parameters
# Look for options
# Iterate through the non hyphenated parameters
# # If PATH is null, look in the working directory
# # If working directory finds nothing, search file system unless -p
# # # If file system finds nothing, say "None found." unless -s then return 0
# # # If found in filesystem, print long path of it and keep looking through the file system
# # If PATH is not null, look in the working directory, then look at each PATH directory one by one
# # # If nothing found in PATH, search file system unless -p
# # # # If nothing found in file system, say "None found." unless -s then return 0
# # # # If file is found, print long path and keep looking through the file system
# # # If found in PATH, say so. 
# # # If -a is in place, keep searching PATH.
# Done

