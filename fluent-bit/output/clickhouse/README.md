# ClickHouse SQL
```sql
CREATE DATABASE IF NOT EXISTS logs;

DROP TABLE IF EXISTS logs.sink;
CREATE TABLE IF NOT EXISTS logs.sink (
    date String,
    host String,
    log String
) ENGINE = Null;

DROP TABLE IF EXISTS logs.logs;
CREATE MATERIALIZED VIEW IF NOT EXISTS logs.logs
ENGINE = MergeTree
PARTITION BY toYYYYMM(datetime)
ORDER BY (datetime, host)
AS
SELECT
    parseDateTimeBestEffort(date) AS datetime,
    host,
    log
FROM logs.sink;
```

# Insert Data By HTTP
```bash
$ echo '{"date":"2018-10-13 18:40:08", "host":"62.43.57.50", "log": "blblblbla"}' | curl 'http://localhost:8123/?query=INSERT%20INTO%20logs.sink%20FORMAT%20JSONEachRow' --data-binary @-
$ echo '(1,1,1)' | curl 'http://localhost:8123/?query=INSERT%20INTO%20logs.sink%20VALUES' --data-binary @-
```