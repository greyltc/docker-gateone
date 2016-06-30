#!/usr/bin/env bash

pacman -S sl

su docker -c 'pacaur -S --noprogressbar --needed --noedit --noconfirm dtach mutagen python2-imaging python2-pyopenssl gateone-git'

# fix the python issue
sed -i 's,#!/usr/bin/env python,#!/usr/bin/env python2,g' /usr/lib/python2.7/site-packages/gateone/applications/terminal/plugins/ssh/scripts/ssh_connect.py
