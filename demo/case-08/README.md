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
{"entityId": "05588900-7959-11ea-b92d-73051399b1f8","values": {"P14M8": 0,"P14M9": 1,"P14M6": 379},"ts": "1590127201000"}
```