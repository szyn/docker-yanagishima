# docker-yanagishima
docker image for yanagishima

[![Docker Pulls](https://img.shields.io/docker/pulls/szyn/docker-yanagishima.svg?style=flat-square)]()

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
 - Please set Presto coordinator url value  
 eg. presto-coodinator:8080
* CATALOG  
 - Please set catalog name.  
 e.g. hive OR mysql and so on...
* SCHEMA
 - Please set shema(table) name.  
 e.g. user


```bash
docker run -it -p 8080:8080 \
-e PRESTO_COODINATOR_URL=presto-coodinator:8080 \
-e CATALOG=hive \
-e SCHEMA=user \
szyn/docker-yanagishima
```

## Contribution


## Licence
[MIT](https://github.com/szyn/docker-yanagishima/blob/master/LICENSE)

## Author
[szyn](https://github.com/szyn)
