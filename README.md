Using these scripts, you can easily install and run multiple marlo environment on a headless server.

This script automatically set up jupyter notebook on server(port 5000).
If you open port 5000, you can access jupyter notebook easily.

It worked on Google Cloud Ubuntu18.04 with and without GPU, but I guess any clowds may work fine.

## How to use

### Install marlo

```
. ./install/gcp/install.bash
```

Make sure to use . command to run in the current shell.


### Launch Clients

```
./docker/launch_multi_client.sh [number of environment]
```

The environments will be connected to ports 10000, 10001, ..., 9999 + [number of ports].

For example, "sh ./run_docker.sh 3" will run three Minecraft environment connected to port 10000, 10001, 10002.

### Optional
#### Install CUDA

```
. ./install/gcp/others/cuda_install.bash
```

#### jupyter-notebook vim extension

```
. ./install/gcp/others/vim_extension.bash
```
