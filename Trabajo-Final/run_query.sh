#!/bin/bash



PGPASSWORD=postgres psql -U postgres -h 127.0.0.1 -d postgres -f ./queries/$1.sql
