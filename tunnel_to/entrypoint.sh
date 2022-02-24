#!/bin/sh

echo "Setting routes..."

ip route add 192.168.0.0/16 via 172.22.0.2
ip route add 10.0.0.0/8 via 172.22.0.2
ip route add 42.244.0.0/16 via 172.22.0.2

echo "Done"

exec "$@"
