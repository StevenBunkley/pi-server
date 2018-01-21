
help:
	cat Makefile
run:
	docker-compose up
start:
	docker-compose up -d
exec-db:
	docker-compose exec influxdb bash
stop-db:
	docker stop influxdb || true; docker rm influxdb || true;
.FORCE: