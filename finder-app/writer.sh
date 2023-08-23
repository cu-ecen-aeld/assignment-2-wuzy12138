#!/bin/sh

writefile=$1
writestr=$2

if [ ! -n "${writefile}" ] || [ ! -n "${writestr}" ]
then
    echo "There should be two params"
    exit 1
fi

dirName=$(dirname $1)
( mkdir -p ${dirName} && touch ${1} ) || ( echo "File $1 is not created" && exit 1 )

echo ${writestr} > ${writefile}


