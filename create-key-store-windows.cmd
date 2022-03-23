set PASS="mule12345"
set APP="check-in-papi"
set HOST="localhost"
set ALTNAMES="DNS:%HOST%,IP:127.0.0.1"
set KEYSTORE="%APP%.p12"
set DNAME="cn=%HOST%, ou=Training, o=MuleSoft, c=US"
keytool -v -genkeypair -keyalg RSA -dname %DNAME% ^
-ext SAN=%ALTNAMES% -validity 365 -alias server ^
-keystore %KEYSTORE% -storetype pkcs12 -storepass %PASS%