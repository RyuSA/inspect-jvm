
# the docker registry to push the images to
REGISTRY:=ghcr.io/ryusa

# default
build-all: build-8 build-11 build-17 build-21

build-8:
	docker build --build-arg JAVA_BASE=8 -t $(REGISTRY)/inspect-jvm:8 .

build-11:
	docker build --build-arg JAVA_BASE=11 -t $(REGISTRY)/inspect-jvm:11 .

build-17:
	docker build --build-arg JAVA_BASE=17 -t $(REGISTRY)/inspect-jvm:17 .

build-21:
	docker build --build-arg JAVA_BASE=21 -t $(REGISTRY)/inspect-jvm:21 .

push-all: push-8 push-11 push-17 push-21

push-8:
	docker push $(REGISTRY)/inspect-jvm:8

push-11:
	docker push $(REGISTRY)/inspect-jvm:11

push-17:
	docker push $(REGISTRY)/inspect-jvm:17

push-21:
	docker push $(REGISTRY)/inspect-jvm:21
