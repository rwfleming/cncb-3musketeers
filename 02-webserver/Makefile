COMPOSE_UP_CMD = docker-compose up --detach
COMPOSE_DOWN_CMD = docker-compose down --remove-orphans
APP_COMPOSE_FILE = ./docker-compose.yml

all: run test down

run: ## deploys the application
	${COMPOSE_UP_CMD}

down: ## shuts everything down
	${COMPOSE_DOWN_CMD}

test: ## runs tests
	make -f ./test.Makefile all

help: ## prints this message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
