#!/bin/sh
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