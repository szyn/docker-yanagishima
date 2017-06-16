FROM java:8u111-jre
MAINTAINER szyn <aqr.aqua@gmail.com>

ENV VERSION=5.0

RUN apt-get update -y && apt-get install -y  unzip openssl bash && \
wget https://bintray.com/artifact/download/wyukawa/generic/yanagishima-${VERSION}.zip && \
unzip yanagishima-${VERSION}.zip && \
rm yanagishima-${VERSION}.zip

WORKDIR yanagishima-${VERSION}
COPY bin/start.sh bin/start.sh
COPY conf/yanagishima.properties conf/yanagishima.properties

COPY docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh && \
chmod +x bin/start.sh

EXPOSE 8080

CMD ["sh", "docker-entrypoint.sh"]
