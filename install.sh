#!/usr/bin/env bash

# Start with everything up to date.
# Or comment this out if you're in a hurry when testing (probably not a best practice).

# dnf update -y

# Let's NodeJS / npm

dnf install npm -y

# Then let's use npm to install node-red

npm install -g --unsafe-perm node-red

# We also want QGIS and Docker, and Cowsay, because everybody loves Cowsay.
#  ____________________
# < Everybody loves me >
#  --------------------
#         \   ^__^
#          \  (oo)\_______
#             (__)\       )\/\
#                 ||----w |
#                 ||     ||


dnf install qgis docker cowsay -y

# And then, let's use pip (the python installer) to install Jupyter Notebooks

pip3 install jupyter
