#/bin/bash

cd /var/tmp/
find . -name "*.tmp" -mindepth 1 -mtime +1 -delete #or we can use -exec rm -rf {} \;