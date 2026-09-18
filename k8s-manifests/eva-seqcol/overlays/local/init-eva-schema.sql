-- Runs once, on first initialization of the postgres pod's (ephemeral, no PVC) data
-- directory, via the postgres image's /docker-entrypoint-initdb.d convention. eva-seqcol's
-- connection pool is configured (spring.datasource.hikari.schema, in eva-seqcol's own
-- src/main/resources/application.properties) to use the "eva" schema, so it needs to exist
-- before the app starts.
CREATE SCHEMA IF NOT EXISTS eva;
