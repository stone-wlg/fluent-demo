# overview
- fluent bit: input mqtt -> filter parse -> output es

# test
```sh
sudo docker-compose up -d
sudo docker-compose ps
sudo docker-compose logs -f
sudo docker-compose down

{"temperature": 36.5, "ts": 1589435911318}
```