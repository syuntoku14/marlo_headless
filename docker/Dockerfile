FROM syuntoku/marlo_client
RUN sudo apt -y update && sudo apt -y upgrade
ENTRYPOINT ["sudo", "xvfb-run", "-s" , "-screen 0 1400x900x24", "/home/malmo/MalmoPlatform/Minecraft/launchClient.sh", "-port", "10000"]
