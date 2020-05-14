# test
```sh
sudo docker run -it --rm fluent/fluent-bit:1.4.4 /fluent-bit/bin/fluent-bit -i stdin -o stdout

sudo docker-compose up -d
sudo docker-compose ps
sudo docker-compose logs -f
sudo docker-compose down
```