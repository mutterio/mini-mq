build: Dockerfile
	docker build -t mini-mq .

tag: build
	docker tag -f mini-mq mutterio/mini-mq

publish: tag
	docker push mutterio/mini-mq
