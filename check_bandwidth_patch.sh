#!/bin/bash

sed -i "s^eth0^$(ip a|grep 192. -B2|grep mtu|grep -v DOWN|awk '{print $2}'|sed 's/://g')^" /usr/local/sbin/check_bandwidth.sh
