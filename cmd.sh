sed -i s/HOSTNAME/$(hostname)/g /www/data/index.html 
nginx -g 'daemon off;'