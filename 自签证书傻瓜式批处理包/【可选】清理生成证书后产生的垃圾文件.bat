del /f /s /q *.pem
del /f /s /q crtserial.srl.old
del /f /s /q index.txt.old
del /f /s /q index.txt.attr
del /f /s /q index.txt.attr.old
echo 01 > crtserial.srl
break > index.txt