del /f /s /q pixiv.net.csr
del /f /s /q pixiv.net.crt
openssl req -new -sha256 -key pixiv.net.key -out pixiv.net.csr -config config_childCA.txt
openssl ca -config config_signCA.txt -in pixiv.net.csr -out pixiv.net.crt
