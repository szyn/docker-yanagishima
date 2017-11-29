# docker-yanagishima
[![Docker Pulls](https://img.shields.io/docker/pulls/szyn/docker-yanagishima.svg?style=flat-square)]()

docker image for yanagishima

## Description
This is dockernize yanagishima.  
[yanagishima](https://github.com/wyukawa/yanagishima) is a Web UI for presto

# feature
* Easy to use

## Requirement
* Docker
* Presto

## Usage

```bash
$ docker pull szyn/docker-yanagishima
```

### Running image
Before you want to run docker image,
please be sure to set following enviroment value.

* PRESTO_COODINATOR_URL
   - Please set Presto coordinator url (e.g. http://presto-coodinator:8080)
* CATALOG
   - Please set catalog name (e.g. hive, mysql...)
* SCHEMA
   - Please set scheme(table) name (e.g. user)

```bash
docker run -it -p 8080:8080 \
-e PRESTO_COODINATOR_URL=http://presto-coodinator:8080 \
-e CATALOG=hive \
-e SCHEMA=user \
szyn/docker-yanagishima
```

## Author
[szyn](https://github.com/szyn)
