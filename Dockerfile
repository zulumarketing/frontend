FROM gliderlabs/alpine:3.2
RUN apk --update add nginx \
    && mkdir -p /tmp/nginx/client-body \
    && rm -rf /var/cache/apk/*
COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d/ /etc/nginx/conf.d
CMD ["nginx", "-g", "daemon off;"]
