#!/bin/sh
name=$(echo $1 | cut -d '.' -f1)
rustc -o output/$name $1
