#!/bin/bash
/usr/sbin/kea-dhcp-ddns -c /data/kea-dhcp-ddns.conf &
/usr/sbin/kea-dhcp4 -c /data/kea-dhcp4.conf
sleep 9999999
