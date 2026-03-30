#!/bin/bash
# DB_HOST resolves to the network where postgres is running


PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME

#!/bin/bash
if [ $# -eq 0 ]; then
  # Enter bash shell in the container (replace this script's process)
  exec docker exec -it adzy-container bash
else
  # Run mix commands
  exec docker exec -it adzy-container mix "$@"
fi