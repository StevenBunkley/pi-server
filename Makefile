
help:
	cat Makefile

run:
	docker-compose up
start:
	docker-compose up -d

db:
	docker-compose up -d influxdb

exec-db:
	docker-compose exec influxdb bash

stop-db:
	docker stop influxdb || true; docker rm influxdb || true;
stop-grafana:
	docker stop grafana || true; docker rm grafana || true;
stop: stop-db stop-grafana

.FORCE: