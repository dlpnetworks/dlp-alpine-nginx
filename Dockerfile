FROM alpine:3.2
MAINTAINER David Jia Wei Li david@david-li.com
RUN apk add --update nginx && rm -rf /var/cache/apk/*
COPY nginx.conf /etc/nginx/nginx.conf
CMD ["nginx"]
