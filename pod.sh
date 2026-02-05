#!/bin/bash
# DB_HOST resolves to the network where postgres is running


PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -U $DB_USER -d $DB_NAME