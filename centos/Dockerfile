FROM centos:7.8.2003

# Change repositories
RUN sed -i s/mirror.centos.org/vault.centos.org/g /etc/yum.repos.d/CentOS-*.repo &&  \
    sed -i s/^#.*baseurl=http/baseurl=http/g /etc/yum.repos.d/CentOS-*.repo && \
    sed -i s/^mirrorlist=http/#mirrorlist=http/g /etc/yum.repos.d/CentOS-*.repo

COPY nvidia.repo /etc/yum.repos.d

# RUN yum update -y

RUN yum install -y epel-release wget kernel-devel

# Install NVIDIA Driver
# RUN yum install -y nvidia-driver-cuda kmod-nvidia-latest-dkms

# Compile kernel modules
# RUN dkms install nvidia/550.144.03

# Install NVIDIA Container toolkit
# RUN yum install -y nvidia-container-toolkit

