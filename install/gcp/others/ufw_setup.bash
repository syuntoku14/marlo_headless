#! /bin/bash

# change the ssh port
sudo ufw allow default deny
sudo ufw allow 222
sudo sed -i 's/#Port 22/Port 222/' /etc/ssh/sshd_config
sudo service sshd restart
sudo ufw enable
