FROM alpine:3.11
RUN apk add vsftpd openrc
RUN apk add lftp openssl
RUN openrc
RUN openssl req -x509 -nodes -days 365 -subj \
		"/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" \
		-addext "subjectAltName=DNS:mydomain.com" \
		-newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem
RUN chmod 600 /etc/ssl/private/vsftpd.pem
COPY ./conf/vsftpd.conf /etc/vsftpd/vsftpd.conf
EXPOSE 40000
EXPOSE 21
COPY ./tools/script.sh script.sh
CMD ["sh", "script.sh"]
