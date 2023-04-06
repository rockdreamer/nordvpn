#!/bin/bash

mkdir -p /dev/net
[[ -c /dev/net/tun ]] || mknod -m 0666 /dev/net/tun c 10 200

if [[ ! -d /run/nordvpn ]]; then
  mkdir -m 0770 /run/nordvpn
fi

/usr/sbin/nordvpnd > /dev/null &
sleep 1

nordvpn login --token "${TOKEN}" || {
  echo "Invalid token."
  exit 1
}

nordvpn set technology NordLynx
nordvpn connect

echo "############################################################"
echo "IP: $(ip -o addr show dev nordlynx | awk '$3 == "inet" {print $4}')"
echo "Private Key: $(wg show nordlynx private-key)"
echo "############################################################"

exit 0