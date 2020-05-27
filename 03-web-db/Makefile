COMPOSE_UP_CMD = docker-compose up --detach
COMPOSE_DOWN_CMD = docker-compose down --remove-orphans
APP_COMPOSE_FILE = ./docker-compose.yml

all: run seed_db test down clean
test: test_web test_db
run: deploy seed_db

deploy:
	${COMPOSE_UP_CMD}

down: 
	${COMPOSE_DOWN_CMD}

clean: 
	echo "Cleaning Database directory"
	rm -rf ./data/*

seed_db: 
	echo "seeding the database..."
	
test_web: 
	echo "Running Web Tests..."
	make -f ./test.web.Makefile all

test_db: 
	echo "Running DB Tests..."
	make -f ./test.db.Makefile all

help:
	echo "Targets:"
	echo "     run: runs deploy,seed_db targets (in that order)"
	echo "    down: destroys the app"
	echo "   clean: cleans out the database directory"
	echo " seed_db: installs the database schema on the running database"
	echo "test_web: runs the tests for the web server"
	echo " test_db: runs the tests for the database"
	echo "    test: runs both test_web and test_db"
	echo "     all: executes run,seed_db,test,down targets (in that order)"
	echo "    help: prints this message"

