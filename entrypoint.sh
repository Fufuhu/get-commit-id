#!/bin/bash

CURRENT_DIR=`pwd`
REPOSITORY_PATH=$1
cd $1

COMMIT_ID=`git rev-parse HEAD`
RETURN_CODE=$?
SHORT_COMMIT_ID=`git rev-parse --short HEAD`
RETURN_CODE=`expr $RETURN_CODE + $?` 

echo "::set-output name=commit_id::${COMMIT_ID}"
echo "::set-output name=short_commit_id::${SHORT_COMMIT_ID}"

exit $RETURN_CODE