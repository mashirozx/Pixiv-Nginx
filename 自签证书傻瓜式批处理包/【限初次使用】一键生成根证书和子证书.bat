echo 01 > crtserial.srl
break > index.txt
.\openssl\openssl genrsa -out pixiv.net.key 2048
.\openssl\openssl genrsa -out rootCA.key 2048
.\openssl\openssl req -new -x509 -key rootCA.key -out rootCA.crt -days 3650 -config config_rootCA.txt
.\openssl\openssl req -new -sha256 -key pixiv.net.key -out pixiv.net.csr -config config_childCA.txt
.\openssl\openssl ca -config config_signCA.txt -in pixiv.net.csr -out pixiv.net.crt
pause