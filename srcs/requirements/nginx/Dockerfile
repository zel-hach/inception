# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zel-hach <zel-hach@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/22 18:36:27 by zel-hach          #+#    #+#              #
#    Updated: 2023/03/18 16:05:55 by zel-hach         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.11
RUN apk update
RUN apk add nginx
RUN apk add openssl
RUN openssl req -x509 -nodes -days 365 -subj \
	"/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" \
	-addext "subjectAltName=DNS:mydomain.com" \ 
	-newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt;
COPY conf/default.conf /etc/nginx/conf.d
RUN mkdir /run/nginx
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]