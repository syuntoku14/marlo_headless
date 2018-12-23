#! /bin/bash

# change the ssh port
sudo apt-get remove --auto-remove sshguard
sudo apt-get purge --auto-remove sshguard
sudo ufw allow default deny
sudo ufw allow 222
sudo sed -i 's/#Port 22/Port 222/' /etc/ssh/sshd_config
# sudo service sshd restart
# sudo ufw enable

# sudo apt update && sudo apt upgrade -y

