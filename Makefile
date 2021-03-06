IMAGE_NAME = monit_test_env

build:
	docker build -t ${IMAGE_NAME} .

daemon:
	docker run --rm -d --name=${IMAGE_NAME} -v ${HOME}/src/monit_test_env:/root/ ${IMAGE_NAME}

connection:
	docker exec -it ${IMAGE_NAME} /bin/bash

stop:
	docker kill ${IMAGE_NAME}
