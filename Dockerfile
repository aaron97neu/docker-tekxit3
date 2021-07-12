FROM openjdk:8-jdk                                                                                                                          
WORKDIR /

EXPOSE 25565

VOLUME [ "/data" ]

ENV URL=https://www.tekx.it/downloads/0.13.2TekxitPiServer.zip
ENV INIT_MEM=4G
ENV MAX_MEM=4G

RUN wget -q ${URL} -O mc.zip
RUN unzip mc.zip -d /data-temp
RUN rm -f /data-temp/{server.properties,ops.json,banned-ips.json,banned-players.json,whitelist.json,usercache.json}
RUN cp -ar /data-temp/* /data 

COPY ./start.sh start.sh    
RUN chmod +x ./start.sh

ENTRYPOINT [ "./start.sh" ] 
