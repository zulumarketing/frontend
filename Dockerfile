FROM gliderlabs/alpine:3.2
RUN apk --update add nginx \
    && mkdir -p /tmp/nginx/client-body \
    && rm -rf /var/cache/apk/*
COPY nginx.conf /etc/nginx/nginx.conf
COPY cloudflare.conf /etc/nginx/conf.d/cloudflare.conf
COPY security.conf /etc/nginx/conf.d/security.conf
CMD ["nginx", "-g", "daemon off;"]
