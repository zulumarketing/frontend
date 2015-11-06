FROM gliderlabs/alpine:3.2
RUN apk --update install nginx \
    && mkdir -p /tmp/nginx/client-body
COPY nginx.conf /etc/nginx/nginx.conf
COPY cloudflare.conf /etc/nginx/conf.d/cloudflare.conf
COPY security.conf /etc/nginx/conf.d/security.conf
CMD ["nginx", "-g", "daemon: off;"]
