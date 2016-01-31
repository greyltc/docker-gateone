# Arch Linux base docker container with pacaur for AUR access
FROM greyltc/archlinux-aur
MAINTAINER Grey Christoforo <grey@christoforo.net>

# install gateone
ADD setup-gateone.sh /usr/sbin/setup-gateone
RUN setup-gateone

CMD ["gateone&; sleep infinity"]
