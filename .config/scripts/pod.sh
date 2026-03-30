if [ $# -eq 0 ]; then
  # Enter bash shell in the container (replace this script's process)
  ssh -t mz@85.215.67.148 "docker exec -it adzy-container /opt/adzy remote"
else
  # Run mix commands
  exec docker exec -it adzy-container mix "$@"
fi