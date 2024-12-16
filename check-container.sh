#!/bin/bash
# Get the list of container IDs
CONTAINERS=$(docker ps -a -q)

# Check if there are any containers to remove
if [ -n "$CONTAINERS" ]; then
docker rm -f $CONTAINERS
else
 echo "No containers to remove"
fi
