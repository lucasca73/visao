default:
	make build
	make run

enter:
	docker exec -ti compvision bash

run:
	docker run --rm -p 8888:8888 -v `pwd`:"/app" -w "/app" --name compvision -it compvision:verao

build:
	docker build -t compvision:verao .
