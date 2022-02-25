#!/bin/sh

echo "Setting routes..."

# Add your route for your vpn here
# remember to bypass your own network at home
ip route add 192.168.131.0/24 via 172.22.0.2
ip route add 192.168.126.0/24 via 172.22.0.2
ip route add 10.0.0.0/8 via 172.22.0.2
ip route add 42.244.0.0/16 via 172.22.0.2

echo "Done"

exec "$@"
