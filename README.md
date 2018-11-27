Using these scripts, you can easily run multiple marlo environment on a headless server.

### How to use

Just run "sh ./run_docker.sh [number of environment]"

The environments are connected to ports 10000, 10001, ..., 9999 + [number of ports].

For example, "sh ./run_docker.sh 3" will run three Minecraft environment connected to port 10000, 10001, 10002.
