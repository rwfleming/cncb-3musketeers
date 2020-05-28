
.DEFAULT_GOAL := help
test: test_web test_db 

run: ## deploys the application
	docker-compose up -d client
	docker-compose up -d database

	sleep 20

	docker-compose up data_load

down: ## shuts everything down
	docker-compose down --remove-orphans

clean: ## resets env
	echo "Cleaning Database directory"
	rm -rf ./data/*
	
test_web: ## runs web tests
	echo "Running Web Tests..."
	make -f ./test.web.Makefile all

test_db: ## runs database tests
	echo "Running DB Tests..."
	make -f ./test.db.Makefile all

help: ## prints this message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
	

