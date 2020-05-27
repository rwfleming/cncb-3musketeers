#!/bin/bash

WEB_SERVER_ADDRESS=${WEB_SERVER_ADDRESS:=localhost:8000}


echo -n "Checking Web server is up..."
curl -ILs ${WEB_SERVER_ADDRESS} | grep ^HTTP | grep -q 200 && echo PASS || echo FAIL

echo -n "Checking Expected Page Content..."
curl -s ${WEB_SERVER_ADDRESS} | grep -q "Hello, Cloud Native Computing Baltimore!" && echo PASS || echo FAIL