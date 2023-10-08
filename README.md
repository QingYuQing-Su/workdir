# workdir
#using dockerfile build images

docker build -t env:v1 .

#create a container

sh ./docker_run.sh
