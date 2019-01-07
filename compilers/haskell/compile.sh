#!/bin/sh
name=$(echo $1 | cut -d '.' -f1)
ghc -o output/$name $1