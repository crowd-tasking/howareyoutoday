#!/bin/bash
set -e #exit on first error

cd "$(dirname "$0")"

psql -c "CREATE USER testuser WITH PASSWORD 'anonymous';"
createdb covidsurveydb -O testuser

cat respondent_tables.sql survey_tables.sql health_tables.sql >> temp.sql
psql -U testuser -d covidsurveydb -f ./temp.sql
rm temp.sql
