
help:
	cat Makefile
run:
	docker-compose up
start:
	docker-compose up -d
exec:
	docker-compose exec myInfluxDB bash
stop:
	docker stop myInfluxDB || true; docker rm myInfluxDB || true;
.FORCE: