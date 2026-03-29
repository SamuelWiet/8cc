#!/bin/bash
# $1 with filename with extension ".c"
# remove ".c" from filename
basename=$(basename "$1" .c)
~/CLionProjects/8cc/8cc -o "$basename.o" -c "$1"
cc -no-pie -o "$basename" "$basename.o"
