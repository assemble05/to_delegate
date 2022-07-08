#!/bin/bash

wget https://zoom.us/client/latest/zoom_amd64.deb -O zoom.deb

sudo dpkg -i zoom.deb

sudo apt-get install -f