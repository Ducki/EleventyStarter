#FROM caddy:alpine
#COPY Caddyfile /etc/caddy/Caddyfile
#COPY _site/ /usr/share/caddy

FROM nginx:alpine
ENV TZ="Europe/Berlin"
COPY _site/ /usr/share/nginx/html

EXPOSE 80
