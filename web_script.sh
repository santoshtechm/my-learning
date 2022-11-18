#!/bin/bash
echo "Here we can add the script to install any dependancies to the compute instance"
sudo apt-get install git -y 
git clone https://github.com/NEOM-KSA/demo-app-java-spring-boot-jococo.git . --bare