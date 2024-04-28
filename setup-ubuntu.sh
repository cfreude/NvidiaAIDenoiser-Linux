apt-get update \
    && apt-get install -y \
    ubuntu-drivers-common

ubuntu-drivers install

apt-get update \
    && apt-get install -y \
    nvidia-utils-535 \
	cmake \
    scons \
	python3 \
	python3-pip \
    libopenimageio-dev \

wget https://developer.download.nvidia.com/compute/cuda/12.1.0/local_installers/cuda_12.1.0_530.30.02_linux.run
sh cuda_12.1.0_530.30.02_linux.run

echo 'export PATH="/usr/local/cuda-12.1/bin:$PATH"' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH="/usr/local/cuda-12.1/lib64:$LD_LIBRARY_PATH"' >> ~/.bashrc
echo 'export CUDA_PATH="/usr/local/cuda-12.1/"' >> ~/.bashrc