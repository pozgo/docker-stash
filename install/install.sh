#!/bin/sh
echo "Starting installation of Confluence..."
cd /data 
wget -q http://www.atlassian.com/software/stash/downloads/binary/atlassian-stash-3.2.0-x64.bin
chmod +x atlassian-stash-3.2.0-x64.bin
./atlassian-stash-3.2.0-x64.bin <<<"o
1
"