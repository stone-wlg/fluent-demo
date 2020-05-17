CREATE DATABASE fluentbit 
  WITH 
  OWNER = postgres 
  ENCODING = 'UTF8' 
  TABLESPACE = pg_default;

CREATE TABLE IF NOT EXISTS "sensor" (tag varchar, time timestamp, data jsonb);
SELECT create_hypertable('sensor', 'time');
