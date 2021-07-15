#!/bin/bash

VERSION=0.13.2TekxitPiServer
URL=https://www.tekx.it/downloads/${VERSION}.zip

mkdir -p /tekxit

wget -q ${URL} -O /tekxit/tekxit.zip

# The excluded files will likely not be found, but let's be safe
unzip -u /tekxit/tekxit.zip -x "*server.properties" "*ops.json" "*banned-ips.json" "*banned-players.json" "*whitelist.json" "*usercache.json" -d /tekxit
cp -a /tekxit/${VERSION}/. /tekxit. && rm -fr /tekxit${VERSION}/

chmod +x /tekxit/ServerLinux.sh
/tekxit/ServerLinux.sh
