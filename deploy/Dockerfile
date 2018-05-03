FROM java:8-jre-alpine
VOLUME /data/server/
ADD ./build/distributions/deploy.tar /data/server
ADD ./start.sh /data/server/deploy										
RUN chmod 755 /data/server/deploy/start.sh
WORKDIR /data/server
RUN ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo $TZ > /etc/timezone

ENTRYPOINT ["sh","/data/server/deploy/start.sh"]
