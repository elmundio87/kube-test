FROM alpine:latest

RUN apk update && \
apk add nginx && \
mkdir -p /www/data && \
mkdir -p /run/nginx

COPY "default.conf" "/etc/nginx/conf.d"
COPY "index.html" "/www/data"

RUN sed -i s/HOSTNAME/$(hostname)/g /www/data/index.html


CMD ["nginx", "-g", "daemon off;"]