FROM osrf/ros:noetic-desktop-full

RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list

RUN apt-get update 
RUN apt-get install -y libopencv-dev \
libgoogle-glog-dev \
libeigen3-dev \
libsuitesparse-dev \
libpcl-dev \
libyaml-cpp-dev libbtbb-dev libgmock-dev unzip python3-tk \
<<<<<<< HEAD
liblapack-dev libcxsparse3 libgflags-dev libgtest-dev libfmt-dev \
=======
liblapack-dev libcxsparse3 libgflags-dev libgtest-dev \
>>>>>>> cee37b0faceb79206e345998bd5fe3bee562d5c0

RUN cd / \
&& mkdir /thirdparty \
&& mkdir /workdir

COPY ./thirdparty/ /thirdparty

WORKDIR /workdir/

RUN cd /thirdparty \
&& rm -rf ./Pangolin \
&& unzip ./Pangolin.zip \
&& mkdir ./Pangolin/build \
&& cmake ./Pangolin -B ./Pangolin/build \
&& make -j4 -C ./Pangolin/build install \
&& mkdir ./g2o/build \
&& cmake ./g2o -B ./g2o/build \
&& make -j4 -C ./g2o/build install \
&& mkdir ./ceres/build \
<<<<<<< HEAD
&& cmake ./ceres -B ./ceres/build \
&& make -j4 -C ./ceres/build install \
&& mkdir ./sophus/build \
&& cmake ./sophus -B ./sophus/build \
&& make -j4 -C ./sophus/build install 
=======
&& cmake ./ceres -B ./Pangolin/build \
&& make -j4 -C ./ceres/build install \
>>>>>>> cee37b0faceb79206e345998bd5fe3bee562d5c0



