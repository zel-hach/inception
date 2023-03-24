FROM alpine:3.11

RUN apk update
RUN apk add wget openrc
RUN openrc
RUN apk add php7 php7-fpm php7-mysqli php7-pdo_mysql php7-json php7-session
RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O /index.php
COPY ./tools/script.sh  .
CMD ["sh", "script.sh"]