JSONNET := jsonnet

.PHONY: dashboards
dashboards:
	mkdir -p dashboards
	$(JSONNET) -J vendor -m dashboards dashboards.jsonnet

install:
	jb install
	wget https://dl.grafana.com/oss/release/grafana-6.6.0.linux-amd64.tar.gz
	tar -zxvf grafana-6.6.0.linux-amd64.tar.gz

start:
	cd grafana-6.6.0 && ./bin/grafana-server
