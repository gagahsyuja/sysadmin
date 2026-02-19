FROM nginx:1.28.2-alpine3.23

WORKDIR /app

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html /usr/share/nginx/html/index.html


RUN chown -R 1000:1000 /usr/share/nginx/html \
                     /var/cache/nginx \
                     /var/log/nginx \
                     /etc/nginx/conf.d \
    && touch /tmp/nginx.pid \
    && chown 1000:1000 /tmp/nginx.pid

USER 1000:1000

EXPOSE 8080
