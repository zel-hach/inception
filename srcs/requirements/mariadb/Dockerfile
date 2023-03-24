# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zel-hach <zel-hach@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/22 18:36:31 by zel-hach          #+#    #+#              #
#    Updated: 2023/03/19 11:46:32 by zel-hach         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.11

RUN apk add openrc
RUN apk add mysql mysql-client
RUN openrc
RUN touch /run/openrc/softlevel
COPY  ./conf/my.cnf /etc/my.cnf 
COPY ./conf/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf
COPY ./tools/script.sh /script.sh
EXPOSE 3306
CMD ["sh", "/script.sh"]

