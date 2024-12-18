#!/bin/sh
envsubst '${NGINX_APP_PORT} ${PROTOCOL} ${MAIN_DOMAIN} ${DJANGO_APP_PORT} ${REDIS_HOST} ${REDIS_PORT} ${ENCODING}' < /etc/nginx/conf.d/local.conf.template > /etc/nginx/conf.d/local.conf
exec nginx -g 'daemon off;'
