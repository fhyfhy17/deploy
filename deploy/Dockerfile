FROM java:8-jre-alpine
ADD ./build/distributions/deploy.tar /data/server
ADD ./start.sh /data/server/deploy										
RUN chmod 755 /data/server/deploy/start.sh
WORKDIR /data/server
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
WORKDIR /data/server/deploy
CMD ["sh","start.sh"]  
