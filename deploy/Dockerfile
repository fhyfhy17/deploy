FROM java:8-jre-alpine
VOLUME /data/server/
ADD ./build/distributions/deploy.tar /data/server
ADD ./start.sh /data/server/deploy										
RUN chmod 755 /data/server/deploy/start.sh
WORKDIR /data/server
CMD  ["sh","/data/server/deploy/start.sh"]