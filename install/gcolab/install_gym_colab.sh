apt update 
apt install -y python-numpy python-dev cmake zlib1g-dev libjpeg-dev xvfb ffmpeg xorg-dev python-opengl libboost-all-dev libsdl2-dev swig

pip3 install pyvirtualdisplay piglet gym torch torchvision torchsummary
pip3 install opencv-python
pip3 install "gym[atari]"

