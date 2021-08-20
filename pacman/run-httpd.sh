#!/bin/bash

set -x
echo "starting apache"
#exec /usr/sbin/httpd -D FOREGROUND
ls -la /usr/sbin/httpd
ls -la /var/log
cat /etc/passwd
cat /var/log/httpd/access_log
#echo $?
#echo "tailing log file"
systemctl start apache
tail -f /var/log/httpd/error_log
