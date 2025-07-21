export GOOSE_DRIVER=clickhouse
export GOOSE_DBSTRING=clickhouse://<username>:<password>@<host>:<port>/feed
export GOOSE_MIGRATION_DIR=./migrations
export GOOSE_TABLE=default.goose_migrations