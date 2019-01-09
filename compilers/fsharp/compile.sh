#!/bin/bash
name=$(echo $1 | cut -d '.' -f1)
dotnet publish -c Release -o output/$name
