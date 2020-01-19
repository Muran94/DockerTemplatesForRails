#!/bin/bash

docker-compose run web rails new . --force --no-deps --database=postgresql
wait
docker-compose build
wait
cp -f database.yml config/database.yml && rm database.yml
wait
docker-compose run web rails db:create
wait
docker-compose up