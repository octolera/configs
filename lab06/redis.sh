#!/bin/bash
cp nginx.conf /etc/nginx/nginx.conf
mkdir /usr/share/nginx/l4/cpu
cp -r music /usr/share/nginx/l4/
cp -r pages /usr/share/nginx/l4/
cp -r image1  /usr/share/nginx/l4/
cp -r image2 /usr/share/nginx/l4/
cp getCPU.service /etc/systemd/system/
cp logger.service /etc/systemd/system/
#cp ./httpd.conf /etc/httpd/conf/httpd.conf
