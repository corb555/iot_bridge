#!/bin/bash

# Taken from the OpenHAB installation step http://docs.openhab.org/installation/linux.html

echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | sudo tee /etc/apt/sources.list.d/webupd8team-java.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | sudo tee -a /etc/apt/sources.list.d/webupd8team-java.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
sudo apt-get update
sudo apt-get install oracle-java8-installer
sudo apt-get install oracle-java8-set-default
java -version

wget -qO - 'https://bintray.com/user/downloadSubjectPublicKey?username=openhab' | sudo apt-key add -
sudo apt-get install apt-transport-https

echo 'deb https://dl.bintray.com/openhab/apt-repo2 stable main' | sudo tee /etc/apt/sources.list.d/openhab2.list

sudo apt-get update
sudo apt-get install openhab2 openhab2-addons systemd

set -x
ls -al /etc/systemd/system/multi-user.target.wants  # debug only
ls -al /usr/lib/systemd/system                      # debug only

## With industrial_ci as of today pre-process does not run on docker https://github.com/ros-industrial/industrial_ci/issues/183, so we need to fall back on to sysVinit (e.g. Ubuntu 14.x)
#sudo /bin/systemctl daemon-reload
#sudo /bin/systemctl enable openhab2.service
#sudo /bin/systemctl start openhab2.service
#sudo systemctl status openhab2.service

sudo /etc/init.d/openhab2 start
sudo /etc/init.d/openhab2 status
sudo update-rc.d openhab2 defaults
