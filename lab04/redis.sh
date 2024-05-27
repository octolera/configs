#!/bin/bash
cp nginx.conf /etc/nginx/nginx.conf
mkdir /usr/share/nginx/l4
cp -r ./music /usr/share/nginx/l4/
cp -r ./pages /usr/share/nginx/l4/
#cp ./httpd.conf /etc/httpd/conf/httpd.conf
