FROM caddy:alpine
#COPY Caddyfile /etc/caddy/Caddyfile
COPY _site/ /usr/share/caddy

EXPOSE 80