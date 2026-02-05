#!/bin/bash
set -e

echo "Waiting for Postgres..."
until pg_isready -h $DB_HOST -p $DB_PORT; do
  sleep 1
done

echo "PostgreSQL is ready! Type 'pod' to connect to the database."

tail -f /dev/null