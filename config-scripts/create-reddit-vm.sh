#!/bin/bash
yc compute instance create \
  --name reddit-full-from-image \
  --hostname reddit-full-from-image \
  --memory=4 \
  --create-boot-disk image-id=fd8hlnta2jvqsh86csis \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --ssh-key ~/.ssh/appuser.pub
