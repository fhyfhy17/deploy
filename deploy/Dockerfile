FROM java:8-jre-alpine
ADD ./build/distributions/deploy.tar /data/server
ADD ./start.sh /data/server
RUN chmod 755 /data/server/start.sh
WORKDIR /data/server
CMD  ["/data/server/start.sh","run"]
