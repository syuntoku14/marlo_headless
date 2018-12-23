#!/bin/bash

sudo apt update && sudo apt upgrade -y

# install anaconda
wget https://repo.anaconda.com/archive/Anaconda3-5.1.0-Linux-x86_64.sh
chmod +x Anaconda3-5.1.0-Linux-x86_64.sh
bash ./Anaconda3-5.1.0-Linux-x86_64.sh -b
echo 'export PATH="~/anaconda3/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# install docker
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo systemctl start docker

sudo apt install -y python3-pip 

# install xvfb and opengl
sudo apt install -y python-opengl xvfb 
yes | pip install crowdai-repo2docker

# install doceker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo curl -L https://raw.githubusercontent.com/docker/compose/1.23.1/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

echo "if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then" >> ~/.bashrc
echo "    . /opt/local/etc/profile.d/bash_completion.sh" >> ~/.bashrc
echo "fi" >> ~/.bashrc

source ~/.bashrc

# install python packages
yes | conda create python=3.6 jupyter --name marlo
conda config --add channels conda-forge
source activate marlo
conda install -y -c crowdai malmo
conda install -y pytorch torchvision -c pytorch
conda install -y pyvirtualdisplay
yes | pip3 install torchvision
yes | pip install -U marlo

# Enable to use docker without sudo
sudo groupadd docker
sudo gpasswd -a $USER docker
sudo systemctl restart docker

# Configure jupyter notebook server
jupyter notebook --generate-config
echo "c = get_config()" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.ip = '0.0.0.0'" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.port = 5000" >> ~/.jupyter/jupyter_notebook_config.py

exit
