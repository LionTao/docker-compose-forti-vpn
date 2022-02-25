#!/bin/sh

echo "Setting routes..."

ip route delete default
ip route add default via 172.22.0.2

echo "Done"

exec "$@"
