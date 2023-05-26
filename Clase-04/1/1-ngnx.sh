#!/bin/bash

docker pull nginx:1.22.1

## parte 2

#MySQL
docker run --name=db -p 3307:3306 -e MYSQL_ROOT_PASSWORD=secret-pw -d mysql:8


#PHP

docker run --name=my-admin -p 82:80 --link db:db -d phpmyadmin

