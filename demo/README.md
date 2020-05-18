# cases

## case-01: 
- fluent bit: input mqtt -> filter parse -> output kafka

## case-02: 
- fluent bit: input tcp -> filter parse -> output kafka

## case-03: 
- fluent bit: input mqtt -> filter parse -> output timescaledb

## case-04: 
- fluent bit: input mqtt -> filter parse -> output es

## case-05:
- emqx-edge: mqtt broker -> fluentd: imput mqtt
- fluentd: input mqtt -> filter parse -> output prometheus

## case-06:
- fluentd: input http -> filter parse -> output kafka

## case-07:
- emqx-edge: mqtt broker -> fluentd: imput mqtt
- fluentd: input mqtt -> filter parse -> output kafka

