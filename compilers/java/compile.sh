#!/bin/sh
name=$(echo $1 | cut -d '.' -f1)
# sed doesnot work on files in current dir
# so we copy to them ~, and copy them back
cp $1 ~/$1
sed -i -e "0,/class [a-zA-Z0-9]\+/s/class [a-zA-Z0-9]\+/class $name/" ~/$1
cp -f ~/$1 $1
mkdir output/$name
javac -d output/$name $1
cd output/$name
echo Main-Class: $name > manifest.txt
jar cvfm app.jar manifest.txt *.class
