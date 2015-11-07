FROM gliderlabs/alpine:3.2
RUN apk --update add nginx \
    && mkdir -p /tmp/nginx/client-body /etc/nginx/sites-enabled \
    && rm -rf /var/cache/apk/* \
    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log
COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d/ /etc/nginx/conf.d
EXPOSE 80 443
ENTRYPOINT ["nginx"]
