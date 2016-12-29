default: build

build:
	docker build --rm=true -t colindensem/phoenix-ci:1.3 .

release: build
	docker push colindensem/phoenix-ci:1.3
