FROM nginx:latest
COPY ./conf.d/local.conf.template /etc/nginx/conf.d/local.conf.template
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
