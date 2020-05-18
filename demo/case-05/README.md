# overview
- emqx-edge: mqtt broker -> fluentd: imput mqtt
- fluentd: input mqtt -> filter parse -> output prometheus

# build docker
```bash
vi ./Dockerfile
gem install fluent-plugin-mqtt-io
gem install fluent-plugin-prometheus
docker build -t stonewlg/fluentd:v1.10 .
```

# test
```sh
sudo docker-compose up
sudo docker-compose ps
sudo docker-compose logs -f fluentd
sudo docker-compose down

topic: sensor/1
payload: {"foo":100,"bar":200,"baz":300}
```