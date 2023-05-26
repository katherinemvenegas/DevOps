#!/bin/bash

#mongo
docker run -d -p 27017:27017 --name m1 mongo

sleep 

docker exec -it m1 /bin/bash -c 'apt-get update && apt-get install -y python3-pip && pip3 install pymongo'

docker cp populate.py m1:populate.py
docker cp find.py m1:find.py

docker exec -it m1 python3 /populate.py
docker exec -it m1 python3 /find.py
