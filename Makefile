.PHONY: build_6 build_7 push_6 push_7 push clean

IMAGE_NAME := node-yarn
IMAGE_TAG_6 := 6.10.2-onbuild
IMAGE_TAG_7 := 7.8.0-onbuild

build_6:
	docker build --no-cache -f Dockerfile_6 -t takecy/${IMAGE_NAME}:${IMAGE_TAG_6} .

build_7:
	docker build --no-cache -f Dockerfile_7 -t takecy/${IMAGE_NAME}:${IMAGE_TAG_7} .

push_6: build_6
	docker push takecy/${IMAGE_NAME}:${IMAGE_TAG_6} 

push_7: build_7
	docker push takecy/${IMAGE_NAME}:${IMAGE_TAG_7} 

push: push_6 push_7

clean:
	docker system prune -f