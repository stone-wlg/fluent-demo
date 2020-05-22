# overview
- fluentd: input kafka -> filter parse -> output timescaledb

# build docker
```bash
vi ./Dockerfile
gem install fluent-plugin-kafka
gem install fluent-plugin-timescaledb
docker build -t stonewlg/fluentd-kafka-timescaledb:v1.10 .
```

# test
```sh
sudo docker-compose up
sudo docker-compose ps
sudo docker-compose restart fluentd
sudo docker-compose logs -f fluentd
sudo docker-compose down

sudo docker-compose exec kafka kafka-console-producer.sh --broker-list kafka:9092 --topic test
{"id":"00000000-0000-0000-0000-000000000000","temperature":36.5, "time": 1590127201000}
```