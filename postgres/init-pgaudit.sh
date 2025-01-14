#!/bin/bash
set -e

# Connect to the database and enable pgaudit
psql --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE EXTENSION IF NOT EXISTS pgaudit;
EOSQL
