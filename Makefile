
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
stop-grafana:
	docker stop grafana || true; docker rm grafana || true;
stop: stop-db stop-grafana
	
.FORCE: