#!/bin/bash
set -e

# Create eula.txt if it doesn't exist
if [ ! -f eula.txt ]; then
  echo "eula=true" > eula.txt
fi

# Start the server from the fixed application directory
java -Xms1G -Xmx1G -jar /opt/minecraft/paper.jar --nogui
