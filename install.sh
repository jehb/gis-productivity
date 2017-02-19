#!/usr/bin/env bash

# Start with everything up to date.
dnf update -y

# Let's NodeJS / npm

dnf install npm -y

# Then let's use npm to install node-red

npm install -g --unsafe-perm node-red

# We also want QGIS and Docker

dnf install qgis docker -y
