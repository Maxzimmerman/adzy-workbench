#!/bin/bash
set -e

DB_HOST=${DB_HOST:-adzy-db}

echo "Waiting for Postgres..."
until pg_isready -h $DB_HOST -p 5432; do
  sleep 1
done

echo "PostgreSQL is ready! Type 'pod' to connect to the database."

tail -f /dev/null