#!/bin/bash

curl -s https://crt.sh/?q=%.$1 > /tmp/curl.out
cat /tmp/curl.out | grep $1 | grep TD | sed -e 's/<//g' | sed -e 's/>//g' | sed -e 's/TD//g' | sed -e 's/\///g' | sed -e 's/ //g' | sed -n '1!p' | sort -u |sed 's/BR/ /g'|xargs -n1 | tee crtsh_subdomains 
