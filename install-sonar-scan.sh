#!/bin/bash

sudo apt-get update
sudo apt-get install -y unzip
wget -O sonar-scanner.zip https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.2.2472-linux.zip
unzip sonar-scanner.zip
sudo mv sonar-scanner-4.6.2.2472-linux /opt/sonar-scanner
sudo ln -s /opt/sonar-scanner/bin/sonar-scanner /usr/local/bin/sonar-scanner