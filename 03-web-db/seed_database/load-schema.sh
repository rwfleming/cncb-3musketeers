#!/bin/bash
mysql -h db -u ${MYSQL_ROOT_USER} -p${MYSQL_ROOT_PASSWORD} 2>/dev/null < ${PWD}/seed_database/mysqlsampledatabase.sql

exit 0