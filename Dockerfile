#FROM caddy:alpine
#COPY Caddyfile /etc/caddy/Caddyfile
#COPY _site/ /usr/share/caddy

FROM nginx:alpine
COPY _site/ /usr/share/nginx/html

EXPOSE 80
