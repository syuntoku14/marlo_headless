# ToDo: 
# Change the docker to nvidia version

# install anaconda
wget https://repo.anaconda.com/archive/Anaconda3-5.1.0-Linux-x86_64.sh
chmod +x Anaconda3-5.1.0-Linux-x86_64.sh
bash ./Anaconda3-5.1.0-Linux-x86_64.sh -b -f -p /usr/local

# install docker
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

sudo apt update && apt upgrade -y
sudo apt install python3-pip

# install xvfb and opengl
sudo apt install -y python-opengl xvfb 
pip install -y crowdai-repo2docker

# install doceker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo curl -L https://raw.githubusercontent.com/docker/compose/1.23.1/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

echo "if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then" >> ~/.bashrc
echo "    . /opt/local/etc/profile.d/bash_completion.sh" >> ~/.bashrc
echo "fi" >> ~/.bashrc

source ~/.bashrc

# install python packages
conda create python=3.6 --name marlo
conda config --add channels conda-forge
source activate marlo
conda install -y -c crowdai malmo
conda install -y pytorch torchvision -c pytorch
conda install -y pyvirtualdisplay
pip3 install torchvision
pip install -U marlo
