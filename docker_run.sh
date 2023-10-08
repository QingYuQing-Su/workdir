# Create a new container
docker run -td --privileged \
-e "QT_X11_NO_MITSHM=1" \
-v "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
-e "XAUTHORITY=$XAUTH" \
-e DISPLAY=$DISPLAY \
--cap-add=SYS_PTRACE \
--gpus all \
--name test \
env:v1 \
/bin/bash
