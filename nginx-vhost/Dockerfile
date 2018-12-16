FROM nginx
MAINTAINER oliver nadj <oliver.nadj@lazada.com>
# ENV DOCKER_HOST="172.17.0.1"
COPY ./nginx/conf.d/default.template /etc/nginx/conf.d/default.template
COPY ./nginx/run_nginx.sh /etc/nginx/run_nginx.sh
COPY ./html /usr/share/nginx/html
CMD ["/etc/nginx/run_nginx.sh"]
