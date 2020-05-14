# test
```sh
sudo docker-compose up -d
sudo docker-compose ps
sudo docker-compose logs -f
sudo docker-compose down

echo '{"key 1": 123456789, "key 2": "abcdefg"}' | nc 127.0.0.1 5170
echo '100 0.5 true This is example' | nc 127.0.0.1 5170
```