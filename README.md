# README

This project is managed using  `docker` and `docker-compose`.

## How to generate new rails project?

```
docker-compose run app rails new . --force -d postgresql -T --skip-bundle
```

## How to build docker image

```
docker-compose build
```

## Development setup

```
# build required images
docker-compose build

# run postgres (db) container in detached mode
docker-compose up -d db

# you can confirm running processes by using 
docker-compose ps -a

# Create database
docker-compose run --rm app rails db:create

# we can run any commands by using
# docker-compose run --rm app [your command]
### Examples:
###   docker-compose run --rm app rails g scaffold post title:string body:text
###   docker-compose run --rm app rails db:migrate

# Run the app
# similar to `rails s`
docker-compose up
```
