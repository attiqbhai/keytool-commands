#!/bin/bash

#The script fil will need execute permissions on
#>chmod +x /path/to/file.sh

PASS="mule12345"
APP="check-in-papi"
HOST="localhost"
ALTNAMES="DNS:$HOST,IP:127.0.0.1"
KEYSTORE="$APP.p12"
DNAME="cn=$HOST, ou=Training, o=MuleSoft, c=US"
keytool -v -genkeypair -keyalg RSA -dname "$DNAME" \
-ext SAN="$ALTNAMES" -validity 365 -alias server \
-keystore "$KEYSTORE" -storetype pkcs12 -storepass "$PASS"