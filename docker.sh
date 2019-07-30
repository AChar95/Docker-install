#! /bin/bash

echo "***************************** installing ***************************************"
sudo apt-get update
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
curl https://get.docker.com | sudo bash
sudo groupadd docker
sudo usermod -aG jenkins docker
sudo gpasswd -a jenkins docker
newgrp docker
echo "************************** Please restart your system **************************"

