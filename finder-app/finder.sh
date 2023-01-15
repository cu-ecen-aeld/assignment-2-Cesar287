#!/bin/sh

if [ $# -lt 2 ]
then    
    echo "Wrong number of parameters specified"
    exit 1
else
    FILESDIR=$1
    SEARCHSTR=$2
fi

if [ -d "$FILESDIR" ]
then
    echo "$FILESDIR exists"
else
    echo "$FILESDIR does not exist"
    exit 1
fi

nrfiles=$(grep -lr ${SEARCHSTR} ${FILESDIR}/* | wc -l)
nrocurrences=$(grep -or ${SEARCHSTR} ${FILESDIR}/* | wc -l)


echo "The number of files are $nrfiles and the number of matching lines are $nrocurrences"

exit 0