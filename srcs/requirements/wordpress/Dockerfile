# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zel-hach <zel-hach@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/05 18:32:49 by zel-hach          #+#    #+#              #
#    Updated: 2023/03/19 11:48:01 by zel-hach         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.11
RUN apk update
RUN apk add openrc
RUN openrc
RUN apk add unit unit-php7 php7 php7-fpm php7-mysqli php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-phar php7-json php7-mbstring
RUN apk add wget
WORKDIR /www
RUN touch /run/openrc/softlevel
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp
COPY ./conf/www.conf /etc/php7/php-fpm.d/
COPY /tools/script.sh /script.sh
EXPOSE 9000
CMD ["sh", "/script.sh"]

