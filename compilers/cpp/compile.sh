#!/bin/sh
name=$(echo $1 | cut -d '.' -f1)
g++ -std=c++17 -o output/$name $1
