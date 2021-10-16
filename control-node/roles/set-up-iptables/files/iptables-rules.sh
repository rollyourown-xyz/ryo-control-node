#!/bin/sh
IPT="/sbin/iptables"

## Map DNS port 53 to Consul listening port
###########################################

$IPT -t nat -A OUTPUT -d localhost -p udp -m udp --dport 53 -j REDIRECT --to-ports 8600
$IPT -t nat -A OUTPUT -d localhost -p tcp -m tcp --dport 53 -j REDIRECT --to-ports 8600
