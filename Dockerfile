FROM java:8u92-jre-alpine
MAINTAINER szyn <aqr.aqua@gmail.com>

RUN apk --no-cache add unzip openssl bash && \
wget https://bintray.com/artifact/download/wyukawa/generic/yanagishima-1.0.zip && \
unzip yanagishima-1.0.zip && \
rm yanagishima-1.0.zip

WORKDIR yanagishima-1.0
COPY bin/start.sh bin/start.sh
COPY conf/yanagishima.properties conf/yanagishima.properties

COPY docker-entrypoint.sh docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh && \
chmod +x bin/start.sh && \
mkdir result

EXPOSE 8080

CMD ["sh", "docker-entrypoint.sh"]
