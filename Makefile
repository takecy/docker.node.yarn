.PHONY: build

IMAGE_NAME := node-yarn
IMAGE_TAG := 6.9.3-onbuild

build:
	docker build --no-cache -t takecy/${IMAGE_NAME}:${IMAGE_TAG} .

push: build
	docker push takecy/${IMAGE_NAME}:${IMAGE_TAG} 

clean:
	docker rmi $$(docker images -f dangling=true -q)