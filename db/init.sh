#!/usr/bin/env bash
psql -U postgres -c "CREATE DATABASE rates"
psql -U postgres -d rates < /mnt/rates.sql
psql -U postgres -c "GRANT ALL PRIVILEGES ON DATABASE rates TO postgres"
