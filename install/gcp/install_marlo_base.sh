# ToDo: 
# Change the docker to nvidia version
# Upgrade docker version

# Please run with sudo

# install anaconda
wget https://repo.anaconda.com/archive/Anaconda3-5.1.0-Linux-x86_64.sh
chmod +x Anaconda3-5.1.0-Linux-x86_64.sh
bash ./Anaconda3-5.1.0-Linux-x86_64.sh -b -f -p /usr/local

# install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

apt update && apt upgrade -y
apt install python3-pip

# install xvfb and opengl
apt install -y python-opengl xvfb 
pip install -y crowdai-repo2docker

# install doceker-compose
curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
curl -L https://raw.githubusercontent.com/docker/compose/1.23.1/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

echo "if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then" >> ~/.bashrc
echo "    . /opt/local/etc/profile.d/bash_completion.sh" >> ~/.bashrc
echo "fi" >> .bashrc

source ~/.bashrc