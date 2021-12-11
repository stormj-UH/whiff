#!/bin/sh
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
for i in $@
    do
       case $i in
            -p)
                commands=`echo $@ | sed 's/-p//g'`
                which $commands
                break
                ;;
            -a)
                which $@
                for i in $@
                do
                    find / -perm a=x -perm a=r -iname $i 2>&1 | grep -v -e "Permission denied" -e "Operation not permitted" -e "No such file or directory"
                done
                break
                ;;
            *)
                if which $@
                then
                    exit
                fi
                echo "Not found in path, searching filesystem."
                for i in $@
                do
                    find / -perm a=x -perm a=r -iname $i 2>&1 | grep -v -e "Permission denied" -e "Operation not permitted" -e "No such file or directory"
                done
                ;;
       esac
    done        