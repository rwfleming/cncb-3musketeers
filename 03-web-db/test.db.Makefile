SHELL := /bin/bash

all: test

test:
	${SHELL} ./test-scripts/db-tests.sh

help:
	echo "Targets:"
	echo "  test: runs the tests"
	echo "   all: runs the tests (only relevant target)"
	echo "  help: prints this message"

