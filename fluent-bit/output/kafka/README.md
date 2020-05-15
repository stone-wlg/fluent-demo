# test
```sh
sudo docker run -it --rm fluent/fluent-bit:1.4.4 /fluent-bit/bin/fluent-bit -i cpu -o kafka -p brokers=localhost:9092 -p topics=test

sudo docker-compose up -d
sudo docker-compose ps
sudo docker-compose logs -f
sudo docker-compose down

sudo docker-compose exec kafka kafka-console-consumer.sh --bootstrap-server kafka:9092 --topic test
```