#!/bin/sh -l

echo "Activating DV8 with code: "$3
/usr/local/bin/dv8-console license:activate -licenseKey $2 -activationCode $3

echo "Running depends"
/opt/java/openjdk/bin/java -jar /depends.jar -s -p dot -d . $1 src depends

echo "Generating arch report"
/usr/local/bin/dv8-console arch-report -paramsFile archreport.properties

echo "Dectivating DV8"
/usr/local/bin/dv8-console license:deactivate -activationCode $3


echo "Current directory :"$(pwd)
find . | grep depends.json

FILE=./depends.json
if [ -f "$FILE" ]; then
    echo "::set-output name=result::success"
else 
    echo "::set-output name=result::failure"
fi
