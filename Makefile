DOCKER_COMPOSE := docker-compose
DOCKER_COMPOSE_FILES := -f ./docker/docker-compose.yml
GRADLE := ./gradlew

run: clean-docker
	${DOCKER_COMPOSE} ${DOCKER_COMPOSE_FILES} up

clean-docker:
	${DOCKER_COMPOSE} ${DOCKER_COMPOSE_FILES} stop
	${DOCKER_COMPOSE} ${DOCKER_COMPOSE_FILES} rm --force -v

clean-all: clean-docker

.PHONY: run clean-docker clean-all