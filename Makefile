NAME = iwai/sphinx
VERSION = sphinx1.8-pyhton2.7
SHELL = /bin/bash

.PHONY: build
build: pre-build docker-build post-build

.PHONY: pre-build
pre-build:

.PHONY: post-build
post-build:

.PHONY: docker-build
docker-build:
	docker build -t $(NAME):$(VERSION) --no-cache --force-rm --compress .

.PHONY: release
release: build push

.PHONY: push
push: pre-push do-push post-push

.PHONY: pre-push
pre-push:
	docker tag $(NAME):$(VERSION) $(NAME):latest

.PHONY: do-push
do-push:
	docker push $(NAME):$(VERSION)
	docker push $(NAME):latest

.PHONY: post-push
post-push:
