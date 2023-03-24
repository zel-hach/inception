#!/bin/sh

echo -e "zineb\nzineb" | adduser $USER
if [ $(ls /home/$USER/ | grep wordpress | wc -l) -eq 0 ]
then
	mkdir /home/$USER/wordpress;
	chmod 777 /home/$USER/wordpress
fi
echo "$USER" |tee -a /etc/vsftpd.userlist
chown -R $USER:$USER /home/$USER/wordpress

exec vsftpd /etc/vsftpd/vsftpd.conf
