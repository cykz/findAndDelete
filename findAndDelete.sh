#/bin/bash

# 0 * * * * check every one hour /bin/bash /scripts/findAndDelete.sh

DIRECTORY = /var/tmp
COUNTER = $(find . -name "*.tmp" -mindepth 1 -mtime +1 -exec {} \; | wc -l)

cd $DIRECTORY
find . -name "*.tmp" -mindepth 1 -mtime +1 -delete #or we can use -exec rm -rf {} \;
echo "$COUNTER files have been deleted"
