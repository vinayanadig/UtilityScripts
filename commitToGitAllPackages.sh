#!/bin/bash

$WRKDIR="/rhel5pdi/home/xxxx"

DIRS=`ls -l $WRKDIR | egrep '^d' | awk '{print $9}'`

for DIR in $DIRS
do
   echo  ${DIR}
   cd ${DIR}
   git add *
   git commit -m 'Commit Message'
   cd ..
done

post-review


