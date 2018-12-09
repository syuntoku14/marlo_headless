Using these scripts, you can easily install and run multiple marlo environment on a headless server.

## How to use

### Install marlo

```
bash ./install/gcp/install.bash
```

You should run it with "bash", not "sh".

### Launch Clients

```
sh ./docker/launch_multi_client.sh [number of environment]
```

The environments will be connected to ports 10000, 10001, ..., 9999 + [number of ports].

For example, "sh ./run_docker.sh 3" will run three Minecraft environment connected to port 10000, 10001, 10002.
