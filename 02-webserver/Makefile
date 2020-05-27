COMPOSE_UP_CMD = docker-compose up --detach
COMPOSE_DOWN_CMD = docker-compose down --remove-orphans
APP_COMPOSE_FILE = ./docker-compose.yml

all: run test down

run:
	${COMPOSE_UP_CMD}

down: 
	${COMPOSE_DOWN_CMD}

test:
	make -f ./test.Makefile all

help:
	echo "Targets:"
	echo "   run: launches the app"
	echo "  down: destroys the app"
	echo "  test: runs the application tests"
	echo "   all: executes run, test, down in that order"
	echo "  help: prints this message"

