#!/bin/sh

echo "Setting iptables"
iptables-legacy -t nat -I PREROUTING -p tcp -m tcp --dport 8443 -j DNAT --to-destination 172.22.0.4:8443
iptables-legacy -t nat -I POSTROUTING -d 172.22.0.4/32 -p tcp -m tcp --dport 8443 -j SNAT --to-source 172.22.0.2
iptables-legacy -t nat -I POSTROUTING -s 172.22.0.3/32 -o ppp0 -j MASQUERADE
echo "Done"

exec "$@"
