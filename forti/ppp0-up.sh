#!/bin/bash
# Check for specific interface if desired
if [ "$PPP_IFACE" != "ppp0" ]; then exit 0; fi
echo 'Setting routes...'

ip route add 192.168.0.0/16 dev ppp0
ip route add 10.0.0.0/8 dev ppp0
ip route add 42.244.0.0/16 dev ppp0

touch /root/ppp0-done
