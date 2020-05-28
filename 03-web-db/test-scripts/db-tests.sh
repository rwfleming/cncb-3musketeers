#!/bin/bash

. ${PWD}/db.env

MYSQL_CMD="mysql -h ${MYSQL_HOST_ADDRESS} -u${MYSQL_ROOT_USER} -p${MYSQL_ROOT_PASSWORD}"

echo -n "Testing Target Database exists..."
$MYSQL_CMD -e 'SHOW DATABASES' 2>/dev/null | grep -q ${APP_DATABASE} && echo PASS || echo FAIL

echo -n "Testing if we can query the database..."
$MYSQL_CMD -D ${APP_DATABASE} -e 'SELECT 1 FROM customers;' 2>/dev/null >/dev/null && echo PASS || echo FAIL