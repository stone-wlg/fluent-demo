# test
```sh
sudo docker run -it -p 1883:1883 --rm fluent/fluent-bit:1.4.4 /fluent-bit/bin/fluent-bit -i mqtt -t data -o stdout -m '*'

sudo docker-compose up -d
sudo docker-compose ps
sudo docker-compose logs -f
sudo docker-compose down
```