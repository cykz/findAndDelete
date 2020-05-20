#/bin/bash

# 0 * * * * check every one hour /bin/bash /scripts/findAndDelete.sh

DIRECTORY=/var/tmp
cd $DIRECTORY
COUNTER=$(find . -name "*.tmp" -mtime +1 | wc -l)

if [[ $COUNTER -gt 0 ]]
then
  find . -name "*.tmp" -mindepth 1 -mtime +1 -delete #or we can use -exec rm -rf {} \;
  logger $COUNTER files have been deleted
else
  logger $COUNTER files to delete
fi
