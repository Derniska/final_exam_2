#!/bin/bash
# A script that
# - creates a folder ‘TXT’ in home directory;
# - moves there all the *.txt files from your home directory (don’t go to subdirectories);
# - prints on the screen: “<*> txt files moved”, where <*> is the number of files moved.

mydir="TXT"
counter=0
cd
mkdir "$mydir"
for obj in ~/*; do
    if [ -f "$obj" ]; then
        if [[ "$obj" == *.txt ]]; then
            mv "$obj" "$mydir"
            ((counter++))
            echo "The file $obj has been moved to $mydir "
        fi
    fi
done
echo "$counter files have been moved"
