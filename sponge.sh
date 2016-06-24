#!/bin/bash

# read and write the same file in a pipeline
# allows you to writ to the file at the same time as you're reading it.
# usage: grep -v '^#' filename | sponge filename
#        iconv -f WINDOWS-1256 -t UTF-8 filename.txt | sponge filename.txt

sponge() ( tmp=$(mktemp) && cat > "$tmp" && cat -- "$tmp" > "$1" && rm -- "$tmp"; )
