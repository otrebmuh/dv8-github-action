#!/bin/sh -l

echo "Running depends"
/opt/java/openjdk/bin/java -jar /depends.jar -s -p dot -d . $1 src depends

find . | grep depends.json

FILE=/depends.json
if [ -f "$FILE" ]; then
    echo "::set-output name=result::success"
else 
    echo "::set-output name=result::failure"
fi
