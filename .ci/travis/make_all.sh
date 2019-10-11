#!/bin/bash
set -e # exit with nonzero exit code if anything fails

array=(`find . -name 'Makefile'`)
for mkfile in "${array[@]}"
do :
    make -C `dirname $mkfile`
done
