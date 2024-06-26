#!/bin/sh

(
    while true; do
        if ip link show vpn_vpnnic > /dev/null 2>&1; then
            /usr/local/bin/nic.sh
            break
        fi
        sleep 1
    done
) &

exec /usr/local/bin/vpnclient execsvc
