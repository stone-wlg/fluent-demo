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

sudo docker-compose exec kafka kafka-console-consumer.sh --bootstrap-server kafka:9092 --topic test
topic: sensor/1
payload: {"topic":"test","temperature":36.5}
```