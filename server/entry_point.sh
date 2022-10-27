#!/usr/bin/env bash

# Function to call when terminating the script
function shutdown {
    echo "docker shutdown complete"
    exit 1
}

cd /opt/bin
ruby entry_point.rb

trap shutdown SIGTERM SIGINT