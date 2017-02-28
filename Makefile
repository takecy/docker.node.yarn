.PHONY: build push clean

IMAGE_NAME := node-yarn
IMAGE_TAG := 6.10.0-onbuild

build:
	docker build --no-cache -t takecy/${IMAGE_NAME}:${IMAGE_TAG} .

push: build
	docker push takecy/${IMAGE_NAME}:${IMAGE_TAG} 

clean:
	docker system prune -f