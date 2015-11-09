FROM gliderlabs/alpine:3.2
MAINTAINER Carlos Killpack <carlos@infinite.ai>
RUN apk --update add nginx \
    && mkdir -p /tmp/nginx/client-body /etc/nginx/sites-enabled \
    && rm -rf /var/cache/apk/* /var/www \
    && mkdir /var/www \
    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80 443
ENTRYPOINT ["nginx", "-g", "daemon off;"]
