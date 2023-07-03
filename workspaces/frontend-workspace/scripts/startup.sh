#!/bin/bash

./opt/GlideinWMS/scripts/create-host-certificate.sh
./opt/GlideinWMS/scripts/create-tokens.sh
./opt/GlideinWMS/scripts/link-git.sh

gwms-frontend upgrade

systemctl start httpd
systemctl start condor
systemctl start gwms-frontend