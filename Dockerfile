FROM openjdk:8-jdk                                                                                                                          
WORKDIR /

EXPOSE 31415

VOLUME [ "/data" ]

ENV URL=https://www.tekx.it/downloads/0.13.2TekxitPiServer.zip
ENV INIT_MEM=4G
ENV MAX_MEM=4G

RUN wget -q ${URL} -O mc.zip
RUN unzip mc.zip -d /data-temp

COPY ./start.sh start.sh    
RUN chmod +x /data-temp/0.13.2TekxitPiServer/ServerLinux.sh

WORKDIR /data-temp/0.13.2TekxitPiServer/
ENTRYPOINT [ "bash", "ServerLinux.sh" ] 


