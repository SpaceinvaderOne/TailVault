#!/bin/sh

if [ -z "$SFTP_USER" ] || [ -z "$SFTP_PASS" ]; then
  echo "Error: SFTP_USER and SFTP_PASS must be set as environment variables in container template."
  exit 1
fi

# add the user in  /conf 
adduser -D -h /conf "$SFTP_USER"

# set password
echo "$SFTP_USER:$SFTP_PASS" | chpasswd

# start ssh
/usr/sbin/sshd -D