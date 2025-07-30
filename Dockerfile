FROM alpine:3.17.0

RUN apk add --no-cache nginx curl

RUN mkdir -p /var/www/html

COPY practest.html /var/www/html/

RUN echo 'server { \
    listen 8080; \
    location / { \
        root /var/www/html; \
        index practest.html; \
    } \
}' > /etc/nginx/http.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
