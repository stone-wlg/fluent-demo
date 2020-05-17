# overview
- fluent bit: input tcp -> filter parse -> output kafka

# test
```sh
sudo docker-compose up -d
sudo docker-compose ps
sudo docker-compose logs -f
sudo docker-compose down

sudo docker-compose exec kafka kafka-console-consumer.sh --bootstrap-server kafka:9092 --topic test
echo '100 0.5 true This is example' | nc 127.0.0.1 5170
```