FROM java:8-jre-alpine
VOLUME /data/server/
ADD ./build/distributions/deploy.tar /data/server
ADD ./start.sh /data/server										
RUN chmod 755 /data/server/start.sh
WORKDIR /data/server

CMD  ["echo","run"]