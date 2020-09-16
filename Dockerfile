FROM nginx:1.15.8-alpine

## Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

COPY ./nginx.conf /etc/nginx/nginx.conf

COPY ./dist/angular-jenkins /usr/share/nginx/html

## ENTRYPOINT ["sh", "nginx -g 'daemon off;'"]

