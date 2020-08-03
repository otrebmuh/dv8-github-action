#!/bin/sh -l

echo "Running depends"
/opt/java/openjdk/bin/java -jar /depends.jar -s -p dot -d . $1 src depends

FILE=/depends.json
if [ -f "$FILE" ]; then
    echo "depends analysis success"
else 
    echo "depends analysis failed"
fi