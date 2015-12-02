.PHONY: all

PROJECT  ?= kr1sp1n/service-base64encoding
TAG      ?= latest
PORT 		 ?= 5050

ifdef HOST_PORT
else
  HOST_PORT=$(PORT)
endif

ifdef REGISTRY
	IMAGE=$(REGISTRY)/$(PROJECT):$(TAG)
else
	IMAGE=$(PROJECT):$(TAG)
endif

all:
	@echo "Available targets:"
	@echo "  * build - build a Docker image for $(IMAGE)"
	@echo "  * pull  - pull $(IMAGE)"
	@echo "  * push  - push $(IMAGE)"
	@echo "  * test  - build and test $(IMAGE)"

install: package.json
	npm install

build: Dockerfile install
	docker build -t $(IMAGE) .

run:
	docker run -d -p $(HOST_PORT):$(PORT) -e PORT=$(PORT) $(IMAGE)

pull:
	docker pull $(IMAGE) || true

push:
	docker push $(IMAGE)
