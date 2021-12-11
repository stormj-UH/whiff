# Whiff - a better which for when which whiffs
# Copyright (C) 2021 Jon-Erik G. Storm
#
#    This program is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License along
#    with this program; if not, write to the Free Software Foundation, Inc.,
#    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
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

