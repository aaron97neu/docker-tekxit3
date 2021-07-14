FROM openjdk:8-jdk                                                                                                                          

RUN mkdir /tekxit/
WORKDIR /tekxit/

ENV VERSION=0.13.2TekxitPiServer
ENV URL=https://www.tekx.it/downloads/${VERSION}.zip

RUN wget -q ${URL} -O tekxit.zip

# The excluded files will likely not be found, but let's be safe
RUN unzip -u tekxit.zip -x "*server.properties" "*ops.json" "*banned-ips.json" "*banned-players.json" "*whitelist.json" "*usercache.json" -d /tekxit
RUN cp -a ${VERSION}/. . && rm -fr ${VERSION}/

RUN chmod +x ./ServerLinux.sh
ENTRYPOINT [ "bash", "ServerLinux.sh" ] 
