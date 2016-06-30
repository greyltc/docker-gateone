#!/usr/bin/env bash

# generate settings
gateone --help

# fix default port
sed -i 's|"port": 443,|"port": 10443,|g' /etc/gateone/conf.d/10server.conf

gateone &
