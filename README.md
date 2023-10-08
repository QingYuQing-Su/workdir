# workdir
#this env includes g2o ceres pangolin sophus eigen3 opencv ros-noetic ..
#using dockerfile build images

docker build -t env:v1 .

#create a container

sh ./docker_run.sh
