# Apline+Nginx baseimage
#
# This image is intended for use as a baseimage for
# nginx-based images (proxy, static, php, etc).

FROM alpine:latest
MAINTAINER David Jia Wei Li david@david-li.com
RUN apk add --update nginx && rm -rf /var/cache/apk/*
COPY nginx.conf /etc/nginx/nginx.conf
RUN chown -R nginx:nginx /var/lib/nginx/
RUN rm -rf /usr/share/nginx/html
CMD ["nginx"]
