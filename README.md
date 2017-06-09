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
