#!/bin/bash
export NO_AT_BRIDGE=1
exec dbus-run-session -- bash
sudo service cron start
sudo service dbus start
startxfce4

