# overview
- fluentd: input http -> filter parse -> output kafka

# build docker
```bash
vi ./Dockerfile
fluent-gem install fluent-plugin-kafka
docker build -t stonewlg/fluentd-mqtt-kafka:v1.10 .
```

# test
```sh
sudo docker-compose up
sudo docker-compose ps
sudo docker-compose logs -f fluentd
sudo docker-compose down

sudo docker-compose exec kafka kafka-console-consumer.sh --bootstrap-server kafka:9092 --topic test
curl -X POST -d 'json={"topic":"test","temperature":36.5}' http://localhost:9880/app.log
```