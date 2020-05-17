# overview
- fluent bit: input mqtt -> filter parse -> output timescaledb

# test
```sh
sudo docker-compose up
sudo docker-compose ps
sudo docker-compose logs -f
sudo docker-compose down

sudo docker-compose exec timescaledb psql -U postgres -d fluentbit -c "SELECT * FROM sensor LIMIT 10"
sudo docker-compose exec timescaledb psql -U postgres -d fluentbit -c "SELECT data -> 'temperature' AS value FROM sensor LIMIT 10"
{"temperature": 36.5, "ts": 1589435911318}
```