.PHONY: all

build:
	docker build --rm=false -f uk.Dockerfile -t chaliy/ner-ms:uk .
	docker tag chaliy/ner-ms:uk chaliy/ner-ms:latest

run:
	docker run -it -p 8080:8080 chaliy/ner-ms

dev:
	docker run -it -p 8080:8080 -v ./src://app chaliy/ner-ms sh

mike-dev:
	docker run -it -p 8080:8080 -v //c/Users/mchalyi/Projects/ner-ms/src://app chaliy/ner-ms sh

mike-run-dev:
	docker run -it -p 8080:8080 -v //c/Users/mchalyi/Projects/ner-ms/src://app chaliy/ner-ms
