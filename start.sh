#!/bin/bash

if [ -n "$CONFIG_URL" ];then
	/usr/bin/wget -O /tmp/wg0.conf $CONFIG_URL
	OUT1=$?
fi

if [ $OUT1 -eq 0 ];then
	/bin/cp /tmp/wg0.conf /etc/wireguard/
fi	

[[ -f "/etc/wireguard/wg0.conf" ]] && /usr/bin/wg-quick up /etc/wireguard/wg0.conf


if [ -n "$GUSER" ];then  
	/usr/bin/curl https://github.com/$GUSER.keys | tee -a /root/.ssh/authorized_keys 
fi

sleep 5
/usr/sbin/sshd -f /etc/ssh/sshd_config -D

