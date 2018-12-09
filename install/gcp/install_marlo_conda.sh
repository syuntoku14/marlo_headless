conda create python=3.6 --name marlo
conda config --add channels conda-forge
source activate marlo # or `source activate marlo` depending on your conda version
conda install -y -c crowdai malmo
conda install -y pytorch torchvision -c pytorch
conda install -y pyvirtualdisplay
pip3 install torchvision
pip install -U marlo
