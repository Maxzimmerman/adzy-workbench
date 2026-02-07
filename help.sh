#!/bin/bash

echo "available commands"
echo ""

docker exec adzy-workbench-container sh -c 'basename -a -s .sh ./*.sh'

