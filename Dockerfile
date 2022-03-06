#FROM caddy:alpine
#COPY Caddyfile /etc/caddy/Caddyfile
#COPY _site/ /usr/share/caddy

#FROM nginx:alpine
#ENV TZ="Europe/Berlin"
#COPY _site/ /usr/share/nginx/html

FROM sebp/lighttpd

RUN apk add tzdata && \
    cp /usr/share/zoneinfo/Europe/Berlin /etc/localtime && \
    echo "Europe/Berlin" > /etc/timezone && \
    apk del tzdata

COPY _site/ /var/www/localhost/htdocs

EXPOSE 80
