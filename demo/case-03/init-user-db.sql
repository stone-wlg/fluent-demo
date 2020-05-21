CREATE DATABASE fluentbit 
  WITH 
  OWNER = postgres 
  ENCODING = 'UTF8' 
  TABLESPACE = pg_default;

CREATE EXTENSION IF NOT EXISTS timescaledb CASCADE;

-- DROP TABLE IF EXISTS "sensor";
CREATE TABLE IF NOT EXISTS "sensor" (tag varchar, time timestamp, data jsonb);
SELECT create_hypertable('sensor', 'time', if_not_exists => TRUE, chunk_time_interval => INTERVAL '1 mins');

ALTER TABLE sensor SET (
  timescaledb.compress,
  timescaledb.compress_segmentby = 'tag'
);

SELECT add_compress_chunks_policy('sensor', INTERVAL '3 mins');

CREATE VIEW sensor_summary_minute
WITH (timescaledb.continuous) AS
SELECT tag,
       time_bucket(INTERVAL '1 mins', time) AS bucket,
       AVG((data -> 'temperature')::double precision),
       MAX((data -> 'temperature')::double precision),
       MIN((data -> 'temperature')::double precision)
FROM sensor
GROUP BY tag, bucket;
