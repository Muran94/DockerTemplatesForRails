#!/bin/bash

printf '\033[36m%s\033[m\n' 'docker-compose run web rails new . --force --no-deps --database=mysql'
docker-compose run web rails new . --force --no-deps --database=mysql
wait

printf '\033[36m%s\033[m\n' 'Copying database.yml.'
cp -f database.yml config/database.yml && rm database.yml
wait

printf '\033[36m%s\033[m\n' 'Creating database.'
docker-compose run web rails db:create
wait

printf '\033[36m%s\033[m\n' 'docker-compose build'
docker-compose build
wait

printf '\033[36m%s\033[m\n' 'Deleting git package definition from Dockerfile.'
sed -i "" "/git/d" Dockerfile
wait

printf '\033[36m%s\033[m\n' 'Your app is now ready to start!'
printf '\033[36m%s\033[m\n' 'Run `docker-compose up` to start your app.'