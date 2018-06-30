sed -i s/HOSTNAME/$(hostname)-$((RANDOM % 99999999 ))/g /www/data/index.html
nginx -g 'daemon off;'