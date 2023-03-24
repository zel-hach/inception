FROM  alpine:3.11
RUN apk update
RUN apk add redis
RUN mkdir tools && mkdir tools/content
COPY ./tools/content tools/content
COPY ./tools/object-cache.php tools
COPY ./conf/redis.conf  /etc/redis.conf
COPY ./tools/script.sh 	.
CMD [ "sh", "script.sh"]