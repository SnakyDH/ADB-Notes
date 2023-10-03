# The massive load depends of the DB motor, for example:

## ETL: Extract Transformation Load

- Format
- Clean Data
- Transformation

## Restore Backup

- Frequency
- Priorities
  - Scheme
  - Data
  - Schema and Data
- Strategies
- Location and infrastructure

## PostgreSQL:

- Massive Load
  Command: copy
  Format: csv
- Backup
  Command:
- pg_dump
  - Schema and Data
  - format: .targz
- pg-restore