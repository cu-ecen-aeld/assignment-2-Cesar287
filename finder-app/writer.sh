#!/bin/sh

if [ $# -lt 2 ]
then    
    echo "Wrong number of parameters specified"
    exit 1
else
    WRITEFILE=$1
    WRITESTR=$2
fi

mkdir -p -- "$(dirname -- ${WRITEFILE})"
echo ${WRITESTR} > ${WRITEFILE}

exit 0