#!/bin/bash
if [ $# -eq 0 ]; then
  # Enter bash shell in the container (replace this script's process)
  exec docker exec -it adzy-container bash
else
  # Run mix commands
  exec docker exec -it adzy-container mix "$@"
fi