#!/bin/sh
envsubst '${NGINX_APP_PORT} ${PROTOCOL} ${DOMAIN} ${DJANGO_APP_PORT} ${REDIS_HOST} ${REDIS_PORT}' < /etc/nginx/conf.d/local.conf.template > /etc/nginx/conf.d/local.conf
exec nginx -g 'daemon off;'
